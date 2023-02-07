import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/common/widgets/sliver_grid_delegate.dart';
import 'package:aqua/data/models/focus_action.dart';
import 'package:aqua/data/provider/wallet_restore_provider.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

class WalletRestoreInput extends ConsumerWidget {
  static const routeName = '/walletRestoreInput';

  const WalletRestoreInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ProviderListener<AsyncValue<void>?>(
      provider: walletRestoreResultProvider,
      onChange: (context, asyncValue) {
        asyncValue?.maybeWhen(
          loading: () {
            showGeneralDialog(
              context: context,
              pageBuilder: (context, _, __) => WillPopScope(
                onWillPop: () async => false,
                child: const Scaffold(
                  body: FlareActor(
                    "assets/animations/create_wallet.flr",
                    alignment: Alignment.topCenter,
                    fit: BoxFit.contain,
                    animation: "Animations",
                    snapToEnd: false,
                    isPaused: false,
                    shouldClip: true,
                  ),
                ),
              ),
            );
          },
          error: (_, __) {
            Navigator.of(context).popUntil((route) => route is! RawDialogRoute);
            showDialog<CustomAlertDialog>(
              context: context,
              builder: (BuildContext context) {
                return CustomAlertDialog(
                  title: AppLocalizations.of(context)!.restoreAlertTitle,
                  subtitle: AppLocalizations.of(context)!.restoreAlertSubtitle,
                  controlWidgets: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text(
                            AppLocalizations.of(context)!.restoreAlertButton),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
            child: Consumer(
              builder: (context, watch, _) =>
                  watch(walletOptionsValueProvider)?.when(
                    data: (_) => const _WalletRestoreInputContent(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(
                          AquaColors.persianGreen,
                        ),
                      ),
                    ),
                    error: (_, __) => GenericErrorWidget(
                      buttonAction: () =>
                          context.read(walletOptionsProvider).reload(),
                    ),
                  ) ??
                  Container(),
            ),
          ),
        ),
      ),
    );
  }
}

class _WalletRestoreInputContent extends StatefulWidget {
  const _WalletRestoreInputContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WalletRestoreInputContentState();
}

class _WalletRestoreInputContentState
    extends State<_WalletRestoreInputContent> {
  final FocusScopeNode _node = FocusScopeNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: ProviderListener<FocusAction?>(
              provider: focusActionProvider,
              onChange: (context, focusAction) {
                if (focusAction is FocusActionNext) {
                  _node.nextFocus();
                } else if (focusAction is FocusActionClear) {
                  _node.unfocus();
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Text(
                      AppLocalizations.of(context)!.restoreInputTitle,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: Text(
                      AppLocalizations.of(context)!.restoreInputSubtitle,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Container(
                    height: 200.h,
                    margin: EdgeInsets.only(top: 42.h),
                    child: Form(
                      key: _formKey,
                      child: FocusScope(
                        node: _node,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                            crossAxisCount: 3,
                            mainAxisSpacing: 14.w,
                            crossAxisSpacing: 10.w,
                            height: 32.h,
                          ),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 12,
                          itemBuilder: (_, i) =>
                              _WalletRestoreInputItem(index: i),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  AquaElevatedButton(
                    child: Text(
                      AppLocalizations.of(context)!.restoreInputButton,
                    ),
                    onPressed: () {
                      context.read(walletRestoreProcessingProvider).restore();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _WalletRestoreInputItem extends StatelessWidget {
  const _WalletRestoreInputItem({required this.index, Key? key})
      : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(children: [
        SizedBox(
          width: 15.w,
          child: Text(
            '${index + 1}',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Expanded(
          child: Center(
            child: Autocomplete<String>(
              fieldViewBuilder: (context, controller, fieldFocusNode, _) {
                fieldFocusNode.addListener(() {
                  if (fieldFocusNode.hasFocus) {
                    controller.clear();
                  } else {
                    final text = controller.text;
                    final clear = context
                        .read(walletRestoreItemProvider(index))
                        .shouldClear(text);

                    if (clear) {
                      controller.clear();
                    }
                  }
                });
                return ProviderListener<Tuple2<String?, int>?>(
                  provider: fieldValueStreamProvider(index),
                  onChange: (context, value) {
                    controller.text = value?.item1 ?? '';
                  },
                  child: TextFormField(
                    autofocus: index == 0,
                    autocorrect: false,
                    enableSuggestions: false,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    controller: controller,
                    focusNode: fieldFocusNode,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(height: 1.0),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      filled: true,
                      fillColor: AquaColors.darkJungleGreen,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0, color: AquaColors.robinEggBlue),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onChanged: (value) => context
                        .read(walletRestoreItemProvider(index))
                        .update(value),
                  ),
                );
              },
              optionsBuilder: (textEditingValue) => context
                  .read(walletRestoreItemProvider(index))
                  .options(textEditingValue.text),
              optionsViewBuilder: (context, onSelected, options) => Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 4.0,
                  color: AquaColors.darkJungleGreen,
                  child: SizedBox(
                    height: 200.0,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final option = options.elementAt(index);
                        return InkWell(
                          onTap: () => onSelected(option),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(option),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              onSelected: (option) =>
                  context.read(walletRestoreItemProvider(index)).select(option),
            ),
          ),
        ),
      ]),
    );
  }
}
