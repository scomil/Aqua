import 'package:aqua/common/widgets/generic_error_widget.dart';
import 'package:aqua/data/provider/receive_address/receive_address_provider.dart';
import 'package:aqua/data/provider/receive_address/receive_address_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> copyToClipboard(
  BuildContext context,
  String value,
) async {
  final text = '${AppLocalizations.of(context)!.copiedToClipboard}: $value';
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  await Clipboard.setData(ClipboardData(text: value));
}

class ReceiveAddressesHistoryScreen extends StatelessWidget {
  static const routeName = '/receiveAddressesHistoryScreen';

  const ReceiveAddressesHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.receiveHistoryTitle),
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
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
          child: Consumer(
            builder: (context, watch, child) {
              final chipsState = watch(receiveAddressChipsState).state;

              return Column(
                children: [
                  const ReceiveAddressesHistoryScreenChips(),
                  if (chipsState == const ReceiveAddressChipsStateUsed()) ...[
                    ReceiveAddressesHistoryScreenUsed(
                      arguments: arguments,
                    ),
                  ] else ...[
                    ReceiveAddressesHistoryScreenAll(
                      arguments: arguments,
                    ),
                  ]
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ReceiveAddressesHistoryScreenChips extends ConsumerWidget {
  const ReceiveAddressesHistoryScreenChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final chipsState = watch(receiveAddressChipsState).state;

    return SizedBox(
      height: 30.h,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              context.read(receiveAddressChipsState.notifier).state =
                  const ReceiveAddressChipsState.used();
            },
            style: TextButton.styleFrom(
              backgroundColor:
                  chipsState == const ReceiveAddressChipsStateUsed()
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.surface,
            ),
            child: Text(
              AppLocalizations.of(context)!.receiveAddressChipsUsed,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 16.sp,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          ElevatedButton(
            onPressed: () {
              context.read(receiveAddressChipsState.notifier).state =
                  const ReceiveAddressChipsState.all();
            },
            style: TextButton.styleFrom(
              backgroundColor: chipsState == const ReceiveAddressChipsStateAll()
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.surface,
            ),
            child: Text(
              AppLocalizations.of(context)!.receiveAddressChipsAll,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 16.sp,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReceiveAddressesHistoryScreenUsed extends ConsumerWidget {
  final Object? arguments;

  const ReceiveAddressesHistoryScreenUsed({Key? key, required this.arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final uiModel = watch(receiveAddressesUiModelProvider(arguments));

    return uiModel?.maybeMap(
          orElse: () {
            return Container();
          },
          usedAddresses: (uiModel) => Expanded(
            child: uiModel.itemUiModels.isEmpty == true
                ? Center(
                    child: Text(
                      AppLocalizations.of(context)!.receiveHistoryUsedEmpty,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  )
                : ListView.separated(
                    padding: EdgeInsets.only(top: 16.h),
                    itemCount: uiModel.itemUiModels.length,
                    itemBuilder: (context, index) {
                      final itemUiModel = uiModel.itemUiModels[index];
                      return ReceiveAddressesHistoryScreenUsedItem(
                        itemUiModel: itemUiModel,
                      );
                    },
                    separatorBuilder: (BuildContext context, _) =>
                        const Divider(),
                  ),
          ),
          loading: (_) => Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.secondaryContainer),
              ),
            ),
          ),
          error: (uiModel) => GenericErrorWidget(
            buttonAction: uiModel.buttonAction,
          ),
        ) ??
        Container();
  }
}

class ReceiveAddressesHistoryScreenAll extends ConsumerWidget {
  final Object? arguments;
  const ReceiveAddressesHistoryScreenAll({Key? key, required this.arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final uiModel = watch(receiveAllAddressesUiModelProvider(arguments));
    return uiModel?.maybeMap(
          orElse: () {
            return Container();
          },
          allAddresses: (uiModel) => Expanded(
            child: uiModel.itemUiModels.isEmpty
                ? Center(
                    child: Text(
                      AppLocalizations.of(context)!
                          .receiveHistoryAllAddressesEmpty,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 16.h),
                      itemCount: uiModel.itemUiModels.length,
                      itemBuilder: (context, index) {
                        final itemUiModel = uiModel.itemUiModels[index];
                        return ReceiveAddressesHistoryScreenAllItem(
                          itemUiModel: itemUiModel,
                        );
                      },
                      separatorBuilder: (BuildContext context, _) =>
                          const Divider(
                        height: 1,
                      ),
                    ),
                  ),
          ),
          loading: (_) => Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.secondaryContainer),
              ),
            ),
          ),
          error: (uiModel) => GenericErrorWidget(
            buttonAction: uiModel.buttonAction,
          ),
        ) ??
        Container();
  }
}

class ReceiveAddressesHistoryScreenAllItem extends ConsumerWidget {
  final ReceiveAllAddressItemUiModel itemUiModel;

  const ReceiveAddressesHistoryScreenAllItem(
      {Key? key, required this.itemUiModel})
      : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemUiModel.date,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
          InkWell(
            onTap: () async {
              await copyToClipboard(context, itemUiModel.address);
            },
            child: Text(
              itemUiModel.address,
              softWrap: true,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 13.sp,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
        ],
      ),
    );
  }
}

class ReceiveAddressesHistoryScreenUsedItem extends StatelessWidget {
  final ReceiveUsedAddressItemUiModel itemUiModel;

  const ReceiveAddressesHistoryScreenUsedItem(
      {Key? key, required this.itemUiModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                itemUiModel.date,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              Expanded(
                child: Text(
                  itemUiModel.amount,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: itemUiModel.addresses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: InkWell(
                    onTap: () async {
                      await copyToClipboard(
                          context, itemUiModel.addresses[index]);
                    },
                    child: Text(
                      itemUiModel.addresses[index],
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
