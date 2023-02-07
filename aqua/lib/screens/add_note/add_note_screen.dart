import 'package:aqua/data/provider/add_note/add_note_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddNoteScreen extends StatelessWidget {
  static const routeName = '/addNoteScreen';

  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProviderListener<String?>(
          provider: addNotePopProvider,
          onChange: (context, result) {
            Navigator.of(context).pop(result);
          },
          child: Container(),
        ),
        Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.sendReviewMyNotes,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints.tightForFinite(),
                onPressed: () => Navigator.of(context).pop(),
              ),
              SizedBox(width: 16.w),
            ],
          ),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              constraints: BoxConstraints(minHeight: 315.h),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    minLines: 13,
                    maxLines: 20,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppLocalizations.of(context)!.addNotePrompt,
                      hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                            fontSize: 16.sp,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    onChanged: (text) =>
                        context.read(addNoteProvider).updateText(text),
                    onSubmitted: (text) =>
                        context.read(addNoteProvider).updateText(text),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () => context.read(addNoteProvider).save(),
                      child: Text(
                        AppLocalizations.of(context)!.addNoteSaveButton,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
