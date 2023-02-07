import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_provider.dart';
import 'package:aqua/data/provider/asset_transaction_details/asset_transaction_details_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class AssetTransactionConfirmScreen extends ConsumerWidget {
  static const routeName = '/assetTransactionConfirmScreen';

  const AssetTransactionConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final uiModel = watch(assetTransactionDetailsUiModelProvider(
      Tuple2(arguments, context),
    ));

    return uiModel.maybeMap(
      success: (uiModel) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/swap_logo.svg',
            width: 106.w,
            height: 24.h,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.exchangeSwapOrderConfirmTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 26.h),
                ...uiModel.items.map(
                  (itemUiModel) => itemUiModel.maybeMap(
                    data: (uiModel) => _AssetTransactionDetailsDataItemWidget(
                      uiModel: uiModel,
                    ),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      AppLocalizations.of(context)!
                          .exchangeSwapOrderConfirmButton,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      loading: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}

class _AssetTransactionDetailsDataItemWidget extends StatelessWidget {
  const _AssetTransactionDetailsDataItemWidget({
    Key? key,
    required this.uiModel,
  }) : super(key: key);

  final AssetTransactionDetailsDataItemUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        children: [
          Text(
            uiModel.title,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          Expanded(
            child: Text(
              uiModel.value,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
