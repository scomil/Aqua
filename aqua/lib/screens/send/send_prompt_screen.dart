import 'package:aqua/common/widgets/aqua_text_field.dart';
import 'package:aqua/data/provider/send_amount/send_amount_arguments.dart';
import 'package:aqua/data/provider/send_assets/send_assets_arguments.dart';
import 'package:aqua/data/provider/send_prompt/send_prompt_provider.dart';
import 'package:aqua/screens/qrscanner/qr_scanner_screen.dart';
import 'package:aqua/screens/send/send_assets_screen.dart';
import 'package:aqua/screens/send/send_amount_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendPromptScreen extends StatelessWidget {
  static const routeName = '/sendPromptScreen';

  const SendPromptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Stack(children: [
      ProviderListener<SendAmountArguments?>(
        provider: sendPromptNavigateToSendAmountProvider(arguments),
        onChange: (context, arguments) {
          if (arguments != null) {
            Navigator.of(context).pushReplacementNamed(
              SendAmountScreen.routeName,
              arguments: arguments,
            );
          }
        },
        child: Container(),
      ),
      ProviderListener<SendAssetsArguments?>(
        provider: sendPromptNavigateToSendAssetsProvider(arguments),
        onChange: (context, arguments) {
          if (arguments != null) {
            Navigator.of(context).pushReplacementNamed(
              SendAssetsScreen.routeName,
              arguments: arguments,
            );
          }
        },
        child: Container(),
      ),
      ProviderListener<Object?>(
        provider: sendPromptClearFocusProvider(arguments),
        onChange: (context, action) {
          if (action != null) {
            FocusScope.of(context).unfocus();
          }
        },
        child: Container(),
      ),
      ProviderListener<Object?>(
        provider: sendPromptNavigateToQrScannerProvider(arguments),
        onChange: (context, qrScannerArguments) async {
          if (qrScannerArguments != null) {
            final result = await Navigator.of(context).pushNamed(
              QrScannerScreen.routeName,
              arguments: qrScannerArguments,
            );
            context
                .read(sendPromptProvider(arguments))
                .handleQrScannerResult(result);
          }
        },
        child: Container(),
      ),
      Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.sendPromptTitle),
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
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    AppLocalizations.of(context)!.sendPromptTo,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onBackground,
                        height: 1.5),
                  ),
                ),
                SizedBox(height: 12.h),
                Stack(children: [
                  Consumer(builder: (context, watch, _) {
                    final text = watch(pasteTextProvider(arguments));
                    return AquaTextField.defaultStyled(
                      context: context,
                      text: text,
                      hintText: AppLocalizations.of(context)!.sendPromptHint,
                      contentPadding: EdgeInsets.only(left: 24.w, right: 56.w),
                      onChanged: (text) => context
                          .read(sendPromptProvider(arguments))
                          .update(text),
                    );
                  }),
                  Consumer(builder: (context, watch, _) {
                    final error = watch(addressInputErrorProvider(arguments));
                    return Visibility(
                      visible: error,
                      child: Container(
                        height: 54.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.error,
                            width: 1.5.r,
                          ),
                        ),
                      ),
                    );
                  }),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        context
                            .read(sendPromptProvider(arguments))
                            .navigateToQrScanner();
                      },
                      child: SvgPicture.asset(
                        'assets/send_scan.svg',
                        width: 19.w,
                        height: 18.h,
                      ),
                    ),
                  )
                ]),
                Consumer(builder: (context, watch, _) {
                  final error = watch(addressInputErrorProvider(arguments));
                  return Opacity(
                    opacity: error ? 1 : 0,
                    child: Container(
                      margin: EdgeInsets.only(top: 6.h),
                      child: Row(children: [
                        Icon(
                          Icons.warning,
                          color: Theme.of(context).colorScheme.error,
                          size: 18.r,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          'Looks like a wrong address',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      ]),
                    ),
                  );
                }),
                Consumer(builder: (context, watch, _) {
                  final clipboardText = watch(clipboardTextProvider(arguments));
                  return clipboardText?.when(
                        data: (text) => _ClipboardContentWidget(text: text),
                        loading: () => Container(),
                        error: (_, __) => Container(),
                      ) ??
                      Container();
                }),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class _ClipboardContentWidget extends StatelessWidget {
  const _ClipboardContentWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.all(Radius.circular(18.r)),
      ),
      child: TextButton(
        onPressed: () =>
            context.read(sendPromptProvider(arguments)).paste(text),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          padding:
              EdgeInsets.only(left: 24.w, right: 14.w, top: 18.h, bottom: 18.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sendPromptClipboardTitle,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              height: 1.28,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4.w),
              SizedBox(
                width: 38.w,
                child: TextButton(
                  onPressed: () {
                    context.read(sendPromptProvider(arguments)).paste(text);
                  },
                  child: SvgPicture.asset(
                    'assets/send_paste.svg',
                    width: 18.w,
                    height: 24.h,
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
