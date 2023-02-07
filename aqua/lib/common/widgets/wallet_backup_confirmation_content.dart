import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/sliver_grid_delegate.dart';
import 'package:aqua/data/provider/wallet_backup_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletBackupConfirmationContent extends ConsumerWidget {
  const WalletBackupConfirmationContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final selections =
        watch(selectionStateNotifierProvider).where((e) => e != null);
    final isFilled = selections.length == 4;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Text(
          AppLocalizations.of(context)!.backupConfirmationTitle,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      const Expanded(
        child: _SectionsContainerWidget(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Row(children: [
          Expanded(
            child: AquaElevatedButton(
              onPressed: !isFilled
                  ? null
                  : () =>
                      context.read(walletBackupConfirmationProvider).confirm(),
              child:
                  Text(AppLocalizations.of(context)!.backupConfirmationButton),
            ),
          ),
        ]),
      )
    ]);
  }
}

class _SectionsContainerWidget extends ConsumerWidget {
  const _SectionsContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final sectionsAsyncValue = watch(sectionsProvider);

    return sectionsAsyncValue.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (sections) => _SectionsListWidget(sections: sections),
    );
  }
}

class _SectionsListWidget extends StatelessWidget {
  const _SectionsListWidget({
    required this.sections,
    Key? key,
  }) : super(key: key);

  final List<Section> sections;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 28.h),
      itemCount: sections.length,
      itemBuilder: (BuildContext context, int index) =>
          _SectionWidget(section: sections[index]),
      separatorBuilder: (BuildContext context, _) => Container(height: 25.h),
    );
  }
}

class _SectionWidget extends ConsumerWidget {
  const _SectionWidget({
    required this.section,
    Key? key,
  }) : super(key: key);

  final Section section;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final selectedIndex = watch(selectionStateNotifierProvider)[section.index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!
              .backupConfirmationSelect('${section.wordToSelect}'),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: SizedBox(
            height: 48.h,
            child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.w,
                  crossAxisSpacing: 10.h,
                  height: 48.h,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: section.words.length,
                itemBuilder: (context, index) {
                  return _SectionWordWidget(
                    word: section.words[index],
                    section: section.index,
                    selected:
                        selectedIndex != null && index == selectedIndex % 3,
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class _SectionWordWidget extends StatelessWidget {
  const _SectionWordWidget({
    required this.word,
    required this.section,
    required this.selected,
    Key? key,
  }) : super(key: key);

  final SectionWord word;
  final int section;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.r),
      ),
      label: SizedBox.expand(
          child: Center(
        child: Text(word.title),
      )),
      selected: selected,
      onSelected: (bool newValue) {
        context
            .read(selectionStateNotifierProvider.notifier)
            .select(section, word.index);
      },
    );
  }
}
