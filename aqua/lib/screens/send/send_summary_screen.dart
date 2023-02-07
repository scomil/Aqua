import 'package:aqua/screens/asset/asset_transaction_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:aqua/data/models/asset.dart';
import 'package:aqua/data/provider/bitcoin_provider.dart';
import 'package:aqua/data/provider/formatter_provider.dart';
import 'package:aqua/data/provider/liquid_provider.dart';

class SendSummaryScreen extends StatelessWidget {
  static const routeName = '/sendSummaryScreen';

  const SendSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)?.settings.arguments as SendSummaryScreenData;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 22.w,
            right: 20.w,
            top: 16.h,
            bottom: 32.h,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/send_summary.svg',
                width: 200.w,
                height: 162.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  AppLocalizations.of(context)!.sendSummaryTitle,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendSummaryAmount,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Expanded(
                      child: Consumer(builder: (context, watch, _) {
                        return FutureBuilder(
                          future: context
                              .read(formatterProvider)
                              .formatAssetAmount(
                                  amount: data.amount,
                                  precision: data.asset.precision),
                          builder: (context, value) {
                            if (value.hasData) {
                              return Text(
                                '${value.data} ${data.asset.ticker}',
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 13.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              );
                            }

                            return Container();
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendSummaryNetworkFee,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Expanded(
                      child: Consumer(
                        builder: (context, watch, _) {
                          return FutureBuilder(
                            future: context
                                .read(formatterProvider)
                                .formatAssetAmount(
                                    amount: data.fee,
                                    precision: data.feeAsset.precision),
                            builder: (context, value) {
                              if (value.hasData) {
                                return Text(
                                  '${value.data} ${data.feeAsset.ticker}',
                                  textAlign: TextAlign.end,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontSize: 13.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                );
                              }

                              return Container();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendSummaryMyNotes,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Icon(
                        Icons.create_outlined,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 12.w,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        data.memo,
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 13.sp,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: DashedDivider(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendSummaryFrom,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Consumer(
                            builder: (context, watch, _) {
                              var addressFrom = '';
                              if (data.asset.isBTC) {
                                addressFrom =
                                    context.read(bitcoinProvider).walletHashId;
                              } else {
                                addressFrom =
                                    context.read(liquidProvider).walletHashId;
                              }
                              return Text(
                                addressFrom,
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              );
                            },
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(16.w, 16.h),
                            alignment: Alignment.centerRight,
                          ),
                          child: SvgPicture.asset(
                            'assets/copy.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendSummaryTransactionId,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            data.txhash,
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(16.w, 16.h),
                            alignment: Alignment.centerRight,
                          ),
                          child: SvgPicture.asset(
                            'assets/copy.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              AppLocalizations.of(context)!.sendSummaryButton,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SendSummaryScreenData {
  final int amount;
  final Asset asset;
  final int fee;
  final Asset feeAsset;
  final String memo;
  final String address;
  final String txhash;
  SendSummaryScreenData({
    required this.amount,
    required this.asset,
    required this.fee,
    required this.feeAsset,
    required this.memo,
    required this.address,
    required this.txhash,
  });

  SendSummaryScreenData copyWith({
    int? amount,
    Asset? asset,
    int? fee,
    Asset? feeAsset,
    String? memo,
    String? address,
    String? txhash,
  }) {
    return SendSummaryScreenData(
      amount: amount ?? this.amount,
      asset: asset ?? this.asset,
      fee: fee ?? this.fee,
      feeAsset: feeAsset ?? this.feeAsset,
      memo: memo ?? this.memo,
      address: address ?? this.address,
      txhash: txhash ?? this.txhash,
    );
  }

  @override
  String toString() {
    return 'SendSummaryScreenData(amount: $amount, asset: $asset, fee: $fee, feeAsset: $feeAsset, memo: $memo, address: $address, txhash: $txhash)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SendSummaryScreenData &&
        other.amount == amount &&
        other.asset == asset &&
        other.fee == fee &&
        other.feeAsset == feeAsset &&
        other.memo == memo &&
        other.address == address &&
        other.txhash == txhash;
  }

  @override
  int get hashCode {
    return amount.hashCode ^
        asset.hashCode ^
        fee.hashCode ^
        feeAsset.hashCode ^
        memo.hashCode ^
        address.hashCode ^
        txhash.hashCode;
  }
}
