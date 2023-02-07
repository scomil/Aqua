import 'package:aqua/common/widgets/aqua_text_field.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/wallet_add_asset/wallet_add_asset_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

class WalletAddAssetScreen extends StatelessWidget {
  static const routeName = '/walletAddAssetScreen';

  const WalletAddAssetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.walletAddAssetTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints.tightForFinite(),
            onPressed: () => Navigator.of(context).pop(),
          ),
          SizedBox(width: 20.w),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Consumer(builder: (context, watch, _) {
            final data = watch(walletAddAssetDataProvider);
            return data.when(
              data: (data) => const _SuccessWidget(),
              loading: () => const _LoadingWidget(),
              error: (_, __) => const _ErrorWidget(),
            );
          }),
        ),
      ),
    );
  }
}

class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 28.h),
          child: AquaTextField.defaultStyled(
            context: context,
            contentPadding: EdgeInsets.zero,
            hintText: AppLocalizations.of(context)!.sendPromptAssetsHint,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            prefixIcon: Container(
              margin: EdgeInsets.only(left: 20.w, right: 8.w),
              child: SvgPicture.asset(
                'assets/search.svg',
                width: 24.r,
                height: 24.r,
              ),
            ),
            prefixIconConstraints:
                BoxConstraints(maxWidth: 48.w, maxHeight: 24.h),
            onChanged: (text) {
              context.read(walletAddAssetProvider).search(text);
            },
          ),
        ),
        Expanded(
          child: Consumer(builder: (context, watch, _) {
            final items = watch(walletAddAssetListItemsProvider);
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return item.map(
                  data: (data) => InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 78.h,
                      child: Column(
                        children: [
                          const Spacer(),
                          Row(
                            children: [
                              SizedBox(
                                width: 32.w,
                                height: 32.w,
                                child: Image(
                                  image: ResizeImage(
                                      MemoryImage(data.uiModel.icon),
                                      width: 64,
                                      height: 64),
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 14.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.uiModel.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5.h),
                                        child: Text(
                                          data.uiModel.ticker,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                fontSize: 13.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Consumer(builder: (context, watch, _) {
                                final arguments = Tuple3(
                                    data.asset, data.unselectable, context);
                                final uiModel = watch(
                                    walletAddAssetControlUiModelProvider(
                                        arguments));
                                return uiModel != null
                                    ? IconButton(
                                        padding: EdgeInsets.all(8.w),
                                        onPressed: uiModel.onPressed,
                                        icon: Icon(
                                          uiModel.icon,
                                          color: uiModel.color,
                                          size: 24.w,
                                        ),
                                      )
                                    : Container();
                              }),
                            ],
                          ),
                          const Spacer(),
                          Divider(
                            height: 1,
                            thickness: 1,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ],
                      ),
                    ),
                  ),
                  empty: (_) => SizedBox(
                    height: 78.h,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.walletAddAssetNoItems,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    Key? key,
    // required this.uiModel,
  }) : super(key: key);

  // final WalletAddAssetErrorUiModel uiModel;

  @override
  Widget build(BuildContext context) {
    return GenericErrorWidget(
      buttonAction: () {},
    );
  }
}
