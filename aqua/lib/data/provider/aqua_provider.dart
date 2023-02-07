import 'package:aqua/common/utils/custom_logger.dart';
import 'package:aqua/data/backend/lib_gdk.dart';
import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/models/gdk_models.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';
import 'package:aqua/data/provider/network_frontend.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/data/provider/sqlite_database/sqlite_database_provider.dart';
import 'package:aqua/utils/extensions/iterable_ext.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

/// # Connection flow description
/// (network name)_provider is derived from [NetworkFrontend]
/// (network name)_network is derived from [NetworkSession]
///
/// [NetworkFrontend] calling [NetworkBackend] which is placed in separate isolate
/// and will use `session` to call [LibGdk] wrapper on gdk ffi functions.
///
/// (network name)_provider can be called directly but preffered way
/// is to group all network providers in [AquaProvider].
/// [AquaProvider] should manage all network providers.
///
/// ## Flow
/// [NetworkFrontend] -> isolate -> [NetworkBackend] -> [NetworkSession] -> [LibGdk]
///
/// ## Returned values
/// Values returned from [LibGdk] are wrapped in [Result]
/// which could contain value or error.
///
/// [Result.error] must be handled in [NetworkBackend].
/// [Result.error] cannot be sent over isolate - causes crash.
/// Unwrapped `null` values cannot be also sent over isolate - causes crash.
///
/// [NetworkFrontend] will always receive value (mostly bool) or
/// [Result.value] in other cases.
/// [Result.value] could contain value or null in case of error in backend.
///
/// ## Beware
/// All (network name)_provider's initialize [NetworkBackend] derived classes.
/// Since the base class always has the same name, and __isolator package__
/// recognize receiver by base class name id we should always use our own uniqueId
/// during backend initialization!

final aquaProvider = Provider<AquaProvider>((ref) => AquaProvider(ref));

class AquaProvider {
  AquaProvider(
    this.ref,
  );

  final ProviderReference ref;
  final bool runTestCode = false;
  static const _channel = MethodChannel('io.aquawallet/protection');

  final PublishSubject<void> _startAuthSubject = PublishSubject();
  late final Stream<void> _startAuthStream = _startAuthSubject.switchMap((_) =>
      authStream.first.asStream().switchMap<void>((value) => value.maybeWhen(
            loading: () => const Stream.empty(),
            orElse: () => Stream.value(null),
          )));

  late final Stream<AsyncValue<String>> mnemonicStringStream = _startAuthStream
      .startWith(null)
      .switchMap((_) => Stream.value(_)
          .asyncMap((_) => getMnemonic())
          .map((mnemonic) => AsyncValue.data(mnemonic))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);

  late final Stream<AsyncValue<void>> authStream = mnemonicStringStream
      .switchMap((value) => value.when(
            data: (mnemonic) => Stream.value(mnemonic)
                .asyncMap((_) async => await disconnect())
                .asyncMap((_) => Rx.zipList([
                      Stream.value(null)
                          .asyncMap((_) async =>
                              await ref.read(liquidProvider).connect())
                          .asyncMap((_) async {
                            return GdkLoginCredentials(mnemonic: mnemonic);
                          })
                          .asyncMap((credentials) => ref
                              .read(liquidProvider)
                              .loginUser(credentials: credentials))
                          .asyncMap<void>((id) async {
                            if (id == null || id.isEmpty) {
                              throw AquaProviderLiquidAuthFailureException();
                            }
                            return;
                          }),
                      Stream.value(null)
                          .asyncMap((_) async =>
                              await ref.read(bitcoinProvider).connect())
                          .asyncMap((_) async {
                            return GdkLoginCredentials(mnemonic: mnemonic);
                          })
                          .asyncMap((credentials) => ref
                              .read(bitcoinProvider)
                              .loginUser(credentials: credentials))
                          .asyncMap<void>((id) async {
                            if (id == null || id.isEmpty) {
                              throw AquaProviderBitcoinAuthFailureException();
                            }
                            return;
                          }),
                    ]).first)
                .map<AsyncValue<void>>((_) => const AsyncValue.data(null))
                .startWith(const AsyncValue.loading())
                .onErrorReturnWith(
                    (error, stackTrace) => AsyncValue.error(error, stackTrace)),
            loading: () => Stream.value(const AsyncValue<void>.loading()),
            error: (error, stackTrace) =>
                Stream.value(AsyncValue<void>.error(error, stackTrace)),
          ))
      .shareReplay(maxSize: 1);

  void authorize() {
    _startAuthSubject.add(null);
  }

  Future<void> disconnect() => Rx.zipList([
        Stream.value(null).asyncMap(
            (event) async => await ref.read(liquidProvider).disconnect()),
        Stream.value(null).asyncMap(
            (event) async => await ref.read(bitcoinProvider).disconnect()),
      ]).asyncMap<void>((_) {
        return null;
      }).first;

  Future<void> skipProtection() =>
      _channel.invokeMethod<void>('skipProtection');
  Future<void> getProtectionSkipped() =>
      _channel.invokeMethod<void>('getProtectionSkipped');
  Future<String> getMnemonic() =>
      _channel.invokeMethod<String?>('getMnemonic').then((value) async {
        if (value == null) {
          throw AquaProviderInvalidMnemonicException();
        }
        return value;
      });
  Future<void> setMnemonic(String mnemonic) =>
      _channel.invokeMethod<void>('setMnemonic', {'mnemonic': mnemonic});
  Future<String?> getPasscode() =>
      _channel.invokeMethod<String?>('getPasscode');
  Future<void> passcodeEnabled() => getPasscode().then((_) async {
        return;
      });
  Future<void> enablePasscode(String passcode) =>
      _channel.invokeMethod<void>('enablePasscode', {'passcode': passcode});
  Future<void> disablePasscode() =>
      _channel.invokeMethod<void>('disablePasscode');
  Future<void> canAuthenticate() =>
      _channel.invokeMethod<void>('canAuthenticate');
  Future<void> biometricEnabled() =>
      _channel.invokeMethod<void>('getBiometricEnabled');
  Future<void> enableBiometric() =>
      _channel.invokeMethod<void>('enableBiometric');
  Future<void> disableBiometric() =>
      _channel.invokeMethod<void>('disableBiometric');
  Future<bool?> requiresBackup() =>
      _channel.invokeMethod<bool>('requiresBackup');
  Future<void> ignoreBackup() => _channel.invokeMethod<void>('ignoreBackup');
  Future<void> clearStorage() => _channel.invokeMethod<void>('clearStorage');
  Future<void> setEnv(String env) =>
      _channel.invokeMethod<void>('setEnv', {'env': env});
  Future<String?> getEnv() => _channel.invokeMethod<String?>('getEnv');
  Future<bool?> tutorialEnabled() =>
      _channel.invokeMethod<bool>('getTutorialEnabled');
  Future<void> enableTutorial() =>
      _channel.invokeMethod<void>('enableTutorial');
  Future<void> disableTutorial() =>
      _channel.invokeMethod<void>('disableTutorial');

  Future<List<Asset>> _bitcoinAssets() =>
      ref.read(bitcoinProvider).getBalance().then((balances) async {
        final btcBalance = balances?['btc'] as int;
        return [
          Asset(
            assetId: 'btc',
            amount: btcBalance,
            name: 'Bitcoin',
            ticker: 'BTC',
            precision: 8,
            isLBTC: false,
            isUSDt: false,
          )
        ];
      });

  Future<List<Asset>> liquidAssetsWithBalance() {
    return Stream.value(null)
        .asyncMap((_) => gdkRawAssets())
        .asyncMap((gdkAssets) {
      return ref.read(liquidProvider).getBalance().then((balances) {
        return Stream.fromIterable(balances?.keys ?? <String>[]).flatMap((key) {
          return Stream.value(key).switchMap((key) {
            final gdkAsset = gdkAssets?[key];
            if (gdkAsset != null) {
              return Stream.value(gdkAsset);
            } else {
              return const Stream<GdkAssetInformation>.empty();
            }
          }).asyncMap((gdkAsset) {
            return Stream.value(key).switchMap((key) {
              dynamic balance = balances?[key];
              if (balance is int) {
                return Stream.value(balance);
              } else {
                return const Stream<int>.empty();
              }
            }).asyncMap((balance) {
              return _buildLiquidAsset(gdkAsset, balance: balance);
            }).first;
          });
        }).toList();
      }).then((assets) {
        assets.sort((a, b) => a.name.compareTo(b.name));
        return assets;
      });
    }).first;
  }

  Future<Map<String, GdkAssetInformation>?> gdkRawAssets() => authStream
      .switchMap<void>((value) => value.maybeWhen(
            data: (_) => Stream.value(null),
            orElse: () => const Stream.empty(),
          ))
      .asyncMap((_) => ref.read(liquidProvider).refreshAssets())
      .first;

  Future<Asset?> liquidAssetById(String id) =>
      gdkRawAssets().then((gdkAssets) => gdkAssets?[id]).then((gdkAsset) =>
          gdkAsset != null ? _buildLiquidAsset(gdkAsset) : Future.value(null));

  Future<GdkAssetInformation?> gdkRawAssetForAssetId(String assetId) {
    return Stream.value(null).asyncMap((_) async {
      return gdkRawAssets();
    }).map((gdkAssets) {
      return gdkAssets?.values ?? <GdkAssetInformation>[];
    }).asyncMap((gdkAssets) async {
      if (gdkAssets.any((asset) => asset.assetId == assetId)) {
        return gdkAssets.firstWhere((asset) => asset.assetId == assetId);
      }

      return null;
    }).first;
  }

  Stream<List<Asset>> walletAssets() => Rx.combineLatestList([
        Stream.value(null)
            .switchMap((_) => ref
                .read(bitcoinProvider)
                .transactionEventSubject
                .startWith(null)
                .asyncMap((_) => ref.read(bitcoinProvider).getTransactions()))
            .startWith([]).asyncMap((_) => _bitcoinAssets()),
        Stream.value(null).asyncMap((_) => gdkRawAssets()).switchMap((gdkAssets) => ref
            .read(liquidProvider)
            .transactionEventSubject
            .startWith(null)
            .asyncMap((_) => ref.read(liquidProvider).getTransactions())
            .asyncMap((transactions) => liquidAssetsWithBalance().then(
                (assetsWithBalances) => Stream.value(transactions)
                    .map((transactions) => transactions
                        ?.map((transaction) => transaction.satoshi?.keys ?? [])
                        .expand((key) => key)
                        .toSet())
                    .map((transactionKeys) {
                      final assetsWithBalancesKeys = assetsWithBalances
                          .map((asset) => asset.assetId)
                          .toSet();
                      return transactionKeys
                              ?.difference(assetsWithBalancesKeys) ??
                          {};
                    })
                    .asyncMap((excludedTransactionKeys) => Stream.fromIterable(
                            excludedTransactionKeys)
                        .flatMap((key) => Stream.value(key).switchMap((key) {
                              final gdkAsset = gdkAssets?[key];
                              if (gdkAsset != null) {
                                return Stream.value(gdkAsset);
                              } else {
                                return const Stream<
                                    GdkAssetInformation>.empty();
                              }
                            }).asyncMap((gdkAsset) => _buildLiquidAsset(gdkAsset)))
                        .toList())
                    .map((assetsInTransactions) => assetsWithBalances + assetsInTransactions)
                    .first))),
        Stream.value(null)
            .asyncMap((_) => liquidAssetsWithBalance())
            .switchMap((assets) => assets.any((asset) => asset.isUSDt)
                ? Stream<List<Asset>>.value([])
                : Stream.value(null)
                    .asyncMap((_) => gdkRawAssets())
                    .switchMap((gdkAssets) {
                      final gdkAsset = gdkAssets?[usdtAssetId];
                      if (gdkAsset != null) {
                        return Stream.value(gdkAsset);
                      } else {
                        return const Stream<GdkAssetInformation>.empty();
                      }
                    })
                    .asyncMap((gdkAsset) => _buildLiquidAsset(gdkAsset))
                    .map((asset) => [asset])),
        Stream.value(null).asyncMap((_) => gdkRawAssets()).switchMap(
            (gdkAssets) => ref
                .read(sqliteDatabaseProvider)
                .assetsStream()
                .asyncMap((favorites) => Stream.fromIterable(favorites)
                    .map((favorite) => gdkAssets?[favorite])
                    .switchMap((gdkAsset) => gdkAsset != null
                        ? Stream.value(gdkAsset)
                        : const Stream<GdkAssetInformation>.empty())
                    .asyncMap((gdkAsset) => _buildLiquidAsset(gdkAsset))
                    .toList()))
      ])
          .map((data) =>
              data.expand((_) => _).distinctBy((asset) => asset.assetId))
          .map((assets) => assets.sorted((a, b) {
                if (a.isBTC) {
                  return -1;
                } else if (b.isBTC) {
                  return 1;
                } else if (a.isLBTC) {
                  return -1;
                } else if (b.isLBTC) {
                  return 1;
                } else if (a.isUSDt) {
                  return -1;
                } else if (b.isUSDt) {
                  return 1;
                } else if (a.amount > 0) {
                  return -1;
                } else if (b.amount > 0) {
                  return 1;
                }
                return a.name.compareTo(b.name);
              }));

  late final Stream<AsyncValue<List<GdkNetworkEventStateEnum?>>>
      networkEventStream = Rx.combineLatest<GdkNetworkEventStateEnum?,
              List<GdkNetworkEventStateEnum?>>([
    ref.read(liquidProvider).gdkNetworkEventSubject,
    ref.read(bitcoinProvider).gdkNetworkEventSubject
  ], (e) => e)
          .doOnData((value) => logger.d('Connection changed to: $value'))
          .map<AsyncValue<List<GdkNetworkEventStateEnum?>>>(
              (value) => AsyncValue.data(value))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  Future<List<Asset>> allAssets() async {
    return gdkRawAssets().then((gdkAssets) {
      return gdkAssets?.values ?? <GdkAssetInformation>[];
    }).then((gdkAssets) {
      return Stream.fromIterable(gdkAssets)
          .flatMap((gdkAsset) => Stream.value(gdkAsset)
              .asyncMap((gdkAsset) => _buildLiquidAsset(gdkAsset)))
          .toList();
    }).then((assets) async {
      assets.addAll(await _bitcoinAssets());
      return assets;
    }).then((assets) async {
      final assetsWithBalance = await liquidAssetsWithBalance();
      for (final a in assetsWithBalance) {
        final index = assets
            .indexWhere((e) => e.assetId == a.assetId && e.amount != a.amount);
        if (index >= 0) {
          assets.removeAt(index);
          assets.insert(index, a);
        }
      }
      return assets;
    }).then((assets) {
      assets.sort((a, b) => a.name.compareTo(b.name));
      return assets;
    });
  }

  Future<Asset> getAssetForAssetId({required String assetId}) async {
    if (assetId.isEmpty) {
      throw AquaProviderAssetForAssetIdEmptyException();
    }

    return allAssets().then((assets) {
      return assets.firstWhere((asset) {
        return asset.assetId == assetId;
      });
    });
  }

  Stream<int> getConfirmationCount(
      {required Asset asset, required int transactionBlockHeight}) {
    return Stream.value(asset).switchMap((asset) {
      return asset.isBTC
          ? ref.read(bitcoinProvider).blockHeightEventSubject
          : ref.read(liquidProvider).blockHeightEventSubject;
    }).map((currentBlockHeight) {
      return (transactionBlockHeight == 0)
          ? 0
          : currentBlockHeight - transactionBlockHeight + 1;
    });
  }

  Future<Asset> _buildLiquidAsset(GdkAssetInformation gdkAsset,
      {int balance = 0}) async {
    return Asset(
      assetId: gdkAsset.assetId ?? '',
      amount: balance,
      name: gdkAsset.name ?? '',
      ticker: gdkAsset.ticker ?? '',
      precision: gdkAsset.precision ?? 8,
      domain: gdkAsset.entity?.domain,
      isLBTC: ref.read(liquidProvider).policyAsset == gdkAsset.assetId,
      isUSDt: ref.read(liquidProvider).usdtId == gdkAsset.assetId,
    );
  }

  void init() {
    // final workDir = await getApplicationSupportDirectory();
    // final workPath = workDir.absolute.path;
    // final config = GdkConfig(dataDir: workPath);

    // _libGdk.initGdk(config);

    // var value = await ref.read(liquidProvider).init();
    // logger.d('Liquid initialized: $value');
    // value = await ref.read(bitcoinProvider).init();
    // logger.d('Bitcoin initialized: $value');

    /// TEST CODE
    // if (runTestCode) {
    //   // var connected = await read(liquidProvider).connect();
    //   // logger.d(connected);

    //   final newMnemonic = [
    //     'moral',
    //     'cover',
    //     'weekend',
    //     'sadness',
    //     'fantasy',
    //     'stairs',
    //     'zoo',
    //     'phrase',
    //     'hidden',
    //     'borrow',
    //     'crash',
    //     'observe'
    //   ];

    //   var isMnemonicValid =
    //       await ref.read(liquidProvider).validateMnemonic(mnemonic);
    //   logger.d(isMnemonicValid);
    //   isMnemonicValid =
    //       await ref.read(bitcoinProvider).validateMnemonic(mnemonic);
    //   logger.d(isMnemonicValid);

    //   mnemonic = newMnemonic;
    //   var isLogged = await login();

    //   if (!isLogged) {
    //     logger.w('Aqua isn\'t logged!');
    //     return;
    //   } else {
    //     logger.d('Aqua is logged: $isLogged');
    //   }

    //   // var walletId =
    //   //     await read(liquidProvider).login(mnemonic: mnemonic.join(' '));
    //   // logger.d(walletId);

    //   final liquidTransactions =
    //       await ref.read(liquidProvider).getTransactions();
    //   logger.d(liquidTransactions);
    //   final bitcoinTransactions =
    //       await ref.read(bitcoinProvider).getTransactions();
    //   logger.d(bitcoinTransactions);
    //   final liquidBalance = await ref.read(liquidProvider).getBalance();
    //   logger.d(liquidBalance);
    //   final bitcoinBalance = await ref.read(bitcoinProvider).getBalance();
    //   logger.d(bitcoinBalance);
    //   var assets = await ref.read(liquidProvider).refreshAssets();
    //   // logger.d(assets);
    //   assets = await ref.read(bitcoinProvider).refreshAssets();
    //   logger.d(assets);

    //   var network = await ref.read(liquidProvider).getNetwork();
    //   logger.d(network);
    //   network = await ref.read(bitcoinProvider).getNetwork();
    //   logger.d(network);

    //   final liquidWallet = await ref.read(liquidProvider).getSubaccount();
    //   logger.d(liquidWallet);
    //   final bitcoinWallet = await ref.read(bitcoinProvider).getSubaccount();
    //   logger.d(bitcoinWallet);

    //   final liquidAddress = await ref.read(liquidProvider).getReceiveAddress();
    //   logger.d(liquidAddress);
    //   final bitcoinAddress =
    //       await ref.read(bitcoinProvider).getReceiveAddress();
    //   logger.d(bitcoinAddress);

    //   final liquidDefaultFees = await ref.read(liquidProvider).getDefaultFees();
    //   logger.d(liquidDefaultFees);
    //   final liquidFastFees = await ref.read(liquidProvider).getFastFees();
    //   logger.d(liquidFastFees);
    //   final bitcoinDefaultFees =
    //       await ref.read(bitcoinProvider).getDefaultFees();
    //   logger.d(bitcoinDefaultFees);
    //   final bitcoinFastFees = await ref.read(bitcoinProvider).getFastFees();
    //   logger.d(bitcoinFastFees);

    //   isLogged = await login();
    //   logger.d('isLogged again? $isLogged');
    // }

    /// TEST CODE
  }
}

class AquaProviderUnathorizedException implements Exception {}

class AquaProviderInvalidMnemonicException implements Exception {}

class AquaProviderBiometricFailureException implements Exception {}

class AquaProviderLiquidAuthFailureException implements Exception {}

class AquaProviderBitcoinAuthFailureException implements Exception {}

class AquaProviderAssetForAssetIdEmptyException implements Exception {}

final _networkEventStreamProvider =
    StreamProvider.autoDispose<AsyncValue<List<GdkNetworkEventStateEnum?>>>(
        (ref) async* {
  yield* ref.watch(aquaProvider).networkEventStream;
});

final networkEventStreamProvider =
    Provider.autoDispose<AsyncValue<List<GdkNetworkEventStateEnum?>>?>((ref) {
  return ref.watch(_networkEventStreamProvider).data?.value;
});
