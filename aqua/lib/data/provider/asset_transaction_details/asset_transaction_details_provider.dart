import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_ui_model.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';

class TransactionDataArgument {
  final GdkTransaction transaction;
  final List<Asset>? satoshiAssets;
  final Asset transactionAsset;
  final int confirmationCount;
  final Asset feeAsset;
  final String? memo;

  TransactionDataArgument({
    required this.transaction,
    this.satoshiAssets,
    required this.transactionAsset,
    this.confirmationCount = 0,
    required this.feeAsset,
    this.memo,
  });

  TransactionDataArgument copyWith({
    GdkTransaction? transaction,
    List<Asset>? satoshiAssets,
    Asset? transactionAsset,
    int? confirmationCount,
    Asset? feeAsset,
    String? memo,
  }) {
    return TransactionDataArgument(
      transaction: transaction ?? this.transaction,
      satoshiAssets: satoshiAssets ?? this.satoshiAssets,
      transactionAsset: transactionAsset ?? this.transactionAsset,
      confirmationCount: confirmationCount ?? this.confirmationCount,
      feeAsset: feeAsset ?? this.feeAsset,
      memo: memo ?? this.memo,
    );
  }

  @override
  String toString() {
    return 'TransactionDataArgument(transaction: $transaction, satoshiAssets: $satoshiAssets, transactionAsset: $transactionAsset, confirmationCount: $confirmationCount, feeAsset: $feeAsset)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is TransactionDataArgument &&
        other.transaction == transaction &&
        listEquals(other.satoshiAssets, satoshiAssets) &&
        other.transactionAsset == transactionAsset &&
        other.confirmationCount == confirmationCount &&
        other.feeAsset == feeAsset &&
        other.memo == memo;
  }

  @override
  int get hashCode {
    return transaction.hashCode ^
        satoshiAssets.hashCode ^
        transactionAsset.hashCode ^
        confirmationCount.hashCode ^
        feeAsset.hashCode ^
        memo.hashCode;
  }
}

final assetTransactionDetailsProvider = Provider.family
    .autoDispose<AssetTransactionDetailsProvider, Object?>(
        (ref, arguments) => AssetTransactionDetailsProvider(ref, arguments));

class AssetTransactionDetailsProvider {
  AssetTransactionDetailsProvider(this.ref, this.arguments) {
    ref.onDispose(() {
      _openLinkSubject.close();
      _clipboardCopySubject.close();
      _navigateToAddNoteSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;
  final Object? arguments;

  Stream<List<GdkTransaction>?> _getAllTransactionsForNetwork(bool isBTC) =>
      isBTC
          ? ref.read(bitcoinProvider).transactionEventSubject.asyncMap(
              (_) async => ref.read(bitcoinProvider).getTransactions())
          : ref
              .read(liquidProvider)
              .transactionEventSubject
              .asyncMap((_) => ref.read(liquidProvider).getTransactions());

  late final Stream<AsyncValue<TransactionDataArgument>> _argumentsStream =
      Stream.value(arguments)
          .asyncMap((value) async {
            try {
              return arguments as Tuple2<Asset, GdkTransaction>;
            } catch (_) {
              throw AssetTransactionDetailsProviderInvalidArgumentsException();
            }
          })
          .switchMap((arguments) {
            return Stream.value(arguments.item1).switchMap((asset) {
              return _getAllTransactionsForNetwork(asset.isBTC);
            }).switchMap((transactions) {
              final updatedTransaction =
                  transactions?.firstWhere((transaction) {
                return transaction.txhash == arguments.item2.txhash;
              });
              if (updatedTransaction != null) {
                return Stream.value(
                    Tuple2(arguments.item1, updatedTransaction));
              } else {
                return const Stream<Tuple2<Asset, GdkTransaction>>.empty();
              }
            }).startWith(arguments);
          })
          .switchMap((arguments) {
            return Stream.value(arguments).asyncMap((arguments) async {
              final transaction = arguments.item2;
              final keys = transaction.satoshi?.keys.toList() ?? <String>[];
              final assetList = <Asset>[];
              for (var assetId in keys) {
                await ref
                    .read(aquaProvider)
                    .getAssetForAssetId(assetId: assetId)
                    .then((asset) {
                  assetList.add(asset);
                });
              }
              final allAssets = await ref.read(aquaProvider).allAssets();
              final feeAsset = allAssets.firstWhere(
                  (a) => arguments.item1.isBTC ? a.isBTC : a.isLBTC);

              return TransactionDataArgument(
                transaction: arguments.item2,
                transactionAsset: arguments.item1,
                satoshiAssets: assetList,
                feeAsset: feeAsset,
              );
            });
          })
          .switchMap((arguments) => _handleNoteSubject
              .startWith(arguments.transaction.memo)
              .switchMap((note) => note is String
                  ? Stream.value(arguments.copyWith(memo: note))
                  : const Stream<TransactionDataArgument>.empty())
              .startWith(arguments))
          .switchMap((arguments) =>
              ref
                  .read(aquaProvider)
                  .getConfirmationCount(
                      asset: arguments.transactionAsset,
                      transactionBlockHeight:
                          arguments.transaction.blockHeight ?? 0)
                  .map((confirmationCount) =>
                      arguments.copyWith(confirmationCount: confirmationCount))
                  .startWith(arguments))
          .map((arguments) => AsyncValue.data(arguments))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Stream<List<AssetTransactionDetailsItemUiModel>> _swapTransactionItemUiModels(
          BuildContext context) =>
      _argumentsStream.switchMap<List<AssetTransactionDetailsItemUiModel>>(
          (value) => value.maybeWhen(
                data: (arguments) =>
                    Stream.value(arguments).switchMap<void>((arguments) {
                  final transaction = arguments.transaction;
                  if (GdkTransactionTypeEnum.swap == transaction.type) {
                    return Stream.value(null);
                  } else {
                    return const Stream.empty();
                  }
                }).asyncMap((_) async {
                  final asset = arguments.transactionAsset;
                  final transaction = arguments.transaction;
                  final satoshiAssets = arguments.satoshiAssets;

                  final items = <AssetTransactionDetailsItemUiModel>[];

                  final type =
                      AppLocalizations.of(context)!.assetTransactionsTypeSwap;
                  final showPendingIndicator = asset.isBTC
                      ? arguments.confirmationCount < 6
                      : arguments.confirmationCount < 2;
                  final date =
                      await formattedDate(context, transaction.createdAtTs);
                  items.add(AssetTransactionDetailsHeaderItemUiModel(
                    type: type,
                    showPendingIndicator: showPendingIndicator,
                    date: date,
                  ));

                  // Delivered 5.00000000 EURx
                  final delivered =
                      (transaction.swapOutgoingSatoshi as int).abs();
                  final deliveredAsset = satoshiAssets!.firstWhere((asset) =>
                      asset.assetId == transaction.swapOutgoingAssetId);
                  final formattedDelivered =
                      await ref.read(formatterProvider).formatAssetAmount(
                            amount: delivered,
                            precision: deliveredAsset.precision,
                          );

                  final deliveredText =
                      '$formattedDelivered ${deliveredAsset.ticker}';
                  items.add(AssetTransactionDetailsDataItemUiModel(
                    title: AppLocalizations.of(context)!
                        .assetTransactionDetailsDelivered,
                    value: deliveredText,
                  ));

                  // Received 0.00012753 L-BTC
                  final received = transaction.swapIncomingSatoshi as int;
                  final receivedAsset = satoshiAssets.firstWhere((asset) =>
                      asset.assetId == transaction.swapIncomingAssetId);
                  final formattedReceived =
                      await ref.read(formatterProvider).formatAssetAmount(
                            amount: received,
                            precision: receivedAsset.precision,
                          );
                  final receivedText =
                      '$formattedReceived ${receivedAsset.ticker}';
                  items.add(AssetTransactionDetailsDataItemUiModel(
                    title: AppLocalizations.of(context)!
                        .assetTransactionDetailsReceived,
                    value: receivedText,
                  )); //0.00003337*0.50739721

                  // -----------
                  items.add(const AssetTransactionDetailsDividerItemUiModel());

                  // Transaction Id
                  final transactionId = transaction.txhash;
                  if (transactionId != null) {
                    items.add(AssetTransactionDetailsCopyableItemUiModel(
                        title: AppLocalizations.of(context)!
                            .assetTransactionDetailsTransactionId,
                        value: transactionId,
                        callback: () {
                          _clipboardCopySubject.add(transactionId);
                        }));
                  }

                  return items;
                }),
                orElse: () {
                  return const Stream.empty();
                },
              ));

  Stream<List<AssetTransactionDetailsItemUiModel>>
      _redepositTransactionItemUiModels(BuildContext context) =>
          _argumentsStream.switchMap<List<AssetTransactionDetailsItemUiModel>>(
              (value) => value.maybeWhen(
                    data: (arguments) =>
                        Stream.value(arguments).switchMap<void>((arguments) {
                      final transaction = arguments.transaction;
                      if (GdkTransactionTypeEnum.redeposit ==
                          transaction.type) {
                        return Stream.value(null);
                      } else {
                        return const Stream.empty();
                      }
                    }).asyncMap((_) async {
                      final asset = arguments.transactionAsset;
                      final transaction = arguments.transaction;

                      final items = <AssetTransactionDetailsItemUiModel>[];

                      // Swap/Pending/Sep 23, 2021 at 14:31
                      final type = AppLocalizations.of(context)!
                          .assetTransactionsTypeRedeposit;
                      final showPendingIndicator = asset.isBTC
                          ? arguments.confirmationCount < 6
                          : arguments.confirmationCount < 2;
                      final date =
                          await formattedDate(context, transaction.createdAtTs);
                      items.add(AssetTransactionDetailsHeaderItemUiModel(
                        type: type,
                        showPendingIndicator: showPendingIndicator,
                        date: date,
                      ));

                      // Delivered 5.00000000 EURx
                      final delivered =
                          transaction.satoshi?.values.first as int;
                      final formattedDelivered =
                          await ref.read(formatterProvider).formatAssetAmount(
                                amount: delivered,
                                precision: asset.precision,
                              );
                      // TODO replace EURx placeholder
                      final deliveredText =
                          '$formattedDelivered ${arguments.satoshiAssets?.first.ticker ?? ''}';
                      items.add(AssetTransactionDetailsDataItemUiModel(
                        title: AppLocalizations.of(context)!
                            .assetTransactionDetailsDelivered,
                        value: deliveredText,
                      ));

                      // Received 0.00012753 L-BTC
                      final received = transaction.satoshi?.values.last as int;
                      final formattedReceived =
                          await ref.read(formatterProvider).formatAssetAmount(
                                amount: received,
                                precision: asset.precision,
                              );
                      final receivedText = '$formattedReceived ${asset.ticker}';
                      items.add(AssetTransactionDetailsDataItemUiModel(
                        title: AppLocalizations.of(context)!
                            .assetTransactionDetailsReceived,
                        value: receivedText,
                      ));

                      // -----------
                      items.add(
                          const AssetTransactionDetailsDividerItemUiModel());

                      // Transaction Id
                      final transactionId = transaction.txhash;
                      if (transactionId != null) {
                        items.add(AssetTransactionDetailsCopyableItemUiModel(
                            title: AppLocalizations.of(context)!
                                .assetTransactionDetailsTransactionId,
                            value: transactionId,
                            callback: () {
                              _clipboardCopySubject.add(transactionId);
                            }));
                      }

                      return items;
                    }),
                    orElse: () {
                      return const Stream.empty();
                    },
                  ));

  Stream<List<AssetTransactionDetailsItemUiModel>>
      _outgoingTransactionItemUiModels(BuildContext context) => _argumentsStream
          .switchMap<List<AssetTransactionDetailsItemUiModel>>((value) =>
              value.maybeWhen(
                data: (arguments) =>
                    Stream.value(arguments).switchMap<void>((arguments) {
                  final transaction = arguments.transaction;
                  if (GdkTransactionTypeEnum.outgoing == transaction.type) {
                    return Stream.value(null);
                  } else {
                    return const Stream.empty();
                  }
                }).asyncMap((_) async {
                  final asset = arguments.transactionAsset;
                  final transaction = arguments.transaction;
                  final feeAsset = arguments.feeAsset;

                  final items = <AssetTransactionDetailsItemUiModel>[];

                  // Sent/Pending/Sep 23, 2021 at 14:31
                  final type =
                      AppLocalizations.of(context)!.assetTransactionsTypeSent;
                  final showPendingIndicator = asset.isBTC
                      ? arguments.confirmationCount < 6
                      : arguments.confirmationCount < 2;
                  final date =
                      await formattedDate(context, transaction.createdAtTs);
                  items.add(AssetTransactionDetailsHeaderItemUiModel(
                    type: type,
                    showPendingIndicator: showPendingIndicator,
                    date: date,
                  ));

                  // Amount 0.8876 BTC
                  final amount = transaction.satoshi?[asset.assetId] as int;
                  final formattedAmount =
                      await ref.read(formatterProvider).signedFormatAssetAmount(
                            amount: -amount,
                            precision: asset.precision,
                          );
                  final cryptoAmount = '$formattedAmount ${asset.ticker}';
                  items.add(AssetTransactionDetailsDataItemUiModel(
                    title: AppLocalizations.of(context)!
                        .assetTransactionDetailsAmount,
                    value: cryptoAmount,
                  ));

                  // Network Fee 0.0000012 BTC
                  final fee = transaction.fee;
                  {
                    final formattedFee = await ref
                        .read(formatterProvider)
                        .signedFormatAssetAmount(
                          amount: -(fee ?? 0),
                          precision: feeAsset.precision,
                        );
                    final feeText = '$formattedFee ${feeAsset.ticker}';
                    items.add(AssetTransactionDetailsDataItemUiModel(
                      title: AppLocalizations.of(context)!
                          .assetTransactionDetailsFee,
                      value: feeText,
                    ));
                  }

                  // My Notes
                  final notes = arguments.memo;
                  items.add(AssetTransactionDetailsNotesItemUiModel(
                    notes: notes,
                    onTap: () {
                      _navigateToAddNoteSubject.add(null);
                    },
                  ));

                  // -----------
                  items.add(const AssetTransactionDetailsDividerItemUiModel());

                  // Transaction Id
                  final transactionId = transaction.txhash;
                  if (transactionId != null) {
                    items.add(AssetTransactionDetailsCopyableItemUiModel(
                        title: AppLocalizations.of(context)!
                            .assetTransactionDetailsTransactionId,
                        value: transactionId,
                        callback: () {
                          _clipboardCopySubject.add(transactionId);
                        }));
                  }
                  return items;
                }),
                orElse: () {
                  return const Stream.empty();
                },
              ));

  Stream<List<AssetTransactionDetailsItemUiModel>>
      _incomingTransactionItemUiModels(BuildContext context) =>
          _argumentsStream.switchMap<List<AssetTransactionDetailsItemUiModel>>(
              (value) => value.maybeWhen(
                    data: (arguments) =>
                        Stream.value(arguments).switchMap<void>((arguments) {
                      final transaction = arguments.transaction;
                      if (GdkTransactionTypeEnum.incoming == transaction.type) {
                        return Stream.value(null);
                      } else {
                        return const Stream.empty();
                      }
                    }).asyncMap((_) async {
                      final asset = arguments.transactionAsset;
                      final transaction = arguments.transaction;

                      final items = <AssetTransactionDetailsItemUiModel>[];

                      // Received/Pending/Sep 23, 2021 at 14:31
                      final type = AppLocalizations.of(context)!
                          .assetTransactionsTypeReceived;
                      final showPendingIndicator = asset.isBTC
                          ? arguments.confirmationCount < 6
                          : arguments.confirmationCount < 2;
                      final date =
                          await formattedDate(context, transaction.createdAtTs);
                      items.add(AssetTransactionDetailsHeaderItemUiModel(
                        type: type,
                        showPendingIndicator: showPendingIndicator,
                        date: date,
                      ));

                      // Amount 0.8876 BTC
                      final amount = transaction.satoshi?[asset.assetId] as int;
                      final formattedAmount =
                          await ref.read(formatterProvider).formatAssetAmount(
                                amount: amount,
                                precision: asset.precision,
                              );
                      final cryptoAmount = '$formattedAmount ${asset.ticker}';
                      items.add(AssetTransactionDetailsDataItemUiModel(
                        title: AppLocalizations.of(context)!
                            .assetTransactionDetailsAmount,
                        value: cryptoAmount,
                      ));

                      // My Notes
                      final notes = arguments.memo;
                      items.add(AssetTransactionDetailsNotesItemUiModel(
                        notes: notes,
                        onTap: () {
                          _navigateToAddNoteSubject.add(null);
                        },
                      ));

                      // -----------
                      items.add(
                          const AssetTransactionDetailsDividerItemUiModel());

                      // Transaction Id
                      final transactionId = transaction.txhash;
                      if (transactionId != null) {
                        items.add(AssetTransactionDetailsCopyableItemUiModel(
                            title: AppLocalizations.of(context)!
                                .assetTransactionDetailsTransactionId,
                            value: transactionId,
                            callback: () {
                              _clipboardCopySubject.add(transactionId);
                            }));
                      }

                      return items;
                    }),
                    orElse: () => const Stream.empty(),
                  ));

  Stream<AssetTransactionDetailsUiModel> _detailsUiModel(
          BuildContext context) =>
      _argumentsStream.switchMap((value) => value.when(
            data: (arguments) => Rx.merge([
              _swapTransactionItemUiModels(context),
              _redepositTransactionItemUiModels(context),
              _outgoingTransactionItemUiModels(context),
              _incomingTransactionItemUiModels(context),
            ])
                .first
                .then<AssetTransactionDetailsUiModel>((items) async {
                  final asset = arguments.transactionAsset;
                  final transaction = arguments.transaction;
                  // ignore: prefer_function_declarations_over_variables
                  final VoidCallback explorerCallback = () {
                    final link = asset.isBTC
                        ? 'https://blockstream.info/tx/${transaction.txhash}'
                        : 'https://blockstream.info/liquid/tx/${transaction.txhash}';
                    _openLinkSubject.add(link);
                  };
                  return AssetTransactionDetailsSuccessUiModel(
                    items: items,
                    explorerCallback: explorerCallback,
                  );
                })
                .asStream()
                .startWith(const AssetTransactionDetailsLoadingUiModel())
                .onErrorReturnWith((error, __) {
                  return const AssetTransactionDetailsErrorUiModel();
                }),
            loading: () =>
                Stream.value(const AssetTransactionDetailsLoadingUiModel()),
            error: (_, __) {
              return Stream.value(const AssetTransactionDetailsErrorUiModel());
            },
          ));

  final PublishSubject<String> _openLinkSubject = PublishSubject();
  late final Stream<AsyncValue<void>> _processLinkOpeningStream =
      _openLinkSubject
          .switchMap((link) => Stream.value(null)
              .asyncMap((_) => canLaunch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw AssetTransactionDetailsProviderUnableToLaunchLinkException();
                }
                return;
              })
              .asyncMap((_) => launch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw AssetTransactionDetailsProviderUnableToLaunchLinkException();
                }
                return;
              })
              .map((data) => AsyncValue.data(data))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Stream<Object?> _showLinkErrorAlert() =>
      _processLinkOpeningStream.switchMap((value) => value.maybeWhen(
            error: (_, __) => Stream<Object?>.value(Object())
                .concatWith([Stream.value(null)]),
            orElse: () => const Stream.empty(),
          ));

  Future<String> formattedDate(BuildContext context, int? timestamp) async {
    return timestamp != null
        ? DateFormat(
                'MMM d, yyyy \'${AppLocalizations.of(context)!.assetTransactionDetailsTimeAt}\' HH:mm')
            .format(DateTime.fromMicrosecondsSinceEpoch(timestamp))
        : '';
  }

  final PublishSubject<String> _clipboardCopySubject = PublishSubject();
  late final Stream<AsyncValue<void>> _clipboardCopyProcessingStream =
      _clipboardCopySubject
          .switchMap((text) => Stream.value(text)
              .asyncMap((text) => Clipboard.setData(ClipboardData(text: text)))
              .map((value) => AsyncValue.data(value))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);
  Stream<double> _idCopiedSnackbarOpacityStream() =>
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                data: (_) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);
  Stream<double> _idCopyFailedSnackbarOpacityStream() =>
      _clipboardCopyProcessingStream
          .switchMap((value) => value.maybeWhen(
                error: (_, __) => Stream.value(1.0).concatWith([
                  Stream.value(0.0).delay(const Duration(milliseconds: 2000)),
                ]),
                orElse: () => Stream.value(0.0),
              ))
          .startWith(0.0);

  final PublishSubject<void> _navigateToAddNoteSubject = PublishSubject();
  Stream<Object?> _navigateToAddNoteStream() =>
      _navigateToAddNoteSubject.switchMap((_) =>
          Stream<Object?>.value(Object()).concatWith([Stream.value(null)]));

  final PublishSubject<Object?> _handleNoteSubject = PublishSubject();
  void handleNote(Object? note) {
    _handleNoteSubject.add(note);
  }

  late final Stream<AsyncValue<void>> _noteProcessingStream = _handleNoteSubject
      .switchMap((memo) => Stream.value(memo)
          .switchMap<String>((memo) =>
              memo is String ? Stream.value(memo) : const Stream.empty())
          .asyncMap((memo) => _argumentsStream
              .switchMap((value) => value.maybeWhen(
                    data: (data) => Stream.value(data),
                    orElse: () => const Stream<TransactionDataArgument>.empty(),
                  ))
              .asyncMap((data) => Stream.value(data)
                  .asyncMap((data) => data.transactionAsset.isBTC
                      ? ref
                          .read(bitcoinProvider)
                          .setTransactionMemo(data.transaction.txhash!, memo)
                          .then((_) => ref
                              .read(bitcoinProvider)
                              .getTransactions(requiresRefresh: true))
                      : ref
                          .read(liquidProvider)
                          .setTransactionMemo(data.transaction.txhash!, memo)
                          .then((_) => ref
                              .read(liquidProvider)
                              .getTransactions(requiresRefresh: true)))
                  .doOnData((_) => data.transactionAsset.isBTC ? ref.read(bitcoinProvider).transactionEventSubject.add(null) : ref.read(liquidProvider).transactionEventSubject.add(null))
                  .first)
              .first)
          .map((_) => const AsyncValue<void>.data(null))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith((error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);

  Stream<Object?> _showAddNoteErrorAlert() =>
      _noteProcessingStream.switchMap((value) => value.maybeWhen(
            error: (_, __) => Stream<Object?>.value(Object())
                .concatWith([Stream.value(null)]),
            orElse: () => const Stream.empty(),
          ));
}

final _assetTransactionDetailsUiModelStreamProvider = StreamProvider.family
    .autoDispose<AssetTransactionDetailsUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._detailsUiModel(context);
});

final assetTransactionDetailsUiModelProvider = Provider.family
    .autoDispose<AssetTransactionDetailsUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
          .watch(_assetTransactionDetailsUiModelStreamProvider(tuple))
          .data
          ?.value ??
      const AssetTransactionDetailsLoadingUiModel();
});

final _assetTransactionDetailsShowLinkErrorAlertStreamProvider = StreamProvider
    .family
    .autoDispose<Object?, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._showLinkErrorAlert();
});

final assetTransactionDetailsShowLinkErrorAlertProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(
          _assetTransactionDetailsShowLinkErrorAlertStreamProvider(arguments))
      .data
      ?.value;
});

final _assetTransactionDetailsCopiedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._idCopiedSnackbarOpacityStream();
});

final assetTransactionDetailsCopiedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(_assetTransactionDetailsCopiedSnackbarOpacityStreamProvider(
              arguments))
          .data
          ?.value ??
      0.0;
});

final _assetTransactionDetailsCopyFailedSnackbarOpacityStreamProvider =
    StreamProvider.family.autoDispose<double, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._idCopyFailedSnackbarOpacityStream();
});

final assetTransactionDetailsCopyFailedSnackbarOpacityProvider =
    Provider.family.autoDispose<double, Object?>((ref, arguments) {
  return ref
          .watch(
              _assetTransactionDetailsCopyFailedSnackbarOpacityStreamProvider(
                  arguments))
          .data
          ?.value ??
      0.0;
});

final _assetTransactionDetailsNavigateToAddNoteStreamProvider = StreamProvider
    .family
    .autoDispose<Object?, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._navigateToAddNoteStream();
});

final assetTransactionDetailsNavigateToAddNoteProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionDetailsNavigateToAddNoteStreamProvider(arguments))
      .data
      ?.value;
});

final _assetTransactionDetailsShowAddNoteErrorAlertStreamProvider =
    StreamProvider.family
        .autoDispose<Object?, Object?>((ref, arguments) async* {
  yield* ref
      .watch(assetTransactionDetailsProvider(arguments))
      ._showAddNoteErrorAlert();
});

final assetTransactionDetailsShowAddNoteErrorAlertProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_assetTransactionDetailsShowAddNoteErrorAlertStreamProvider(
          arguments))
      .data
      ?.value;
});

class AssetTransactionDetailsProviderInvalidArgumentsException
    implements Exception {}

class AssetTransactionDetailsProviderUnableToLaunchLinkException
    implements Exception {}
