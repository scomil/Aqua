import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget(
      {Key? key,
      this.description,
      this.buttonTitle,
      required this.buttonAction})
      : super(key: key);

  final String? description;
  final String? buttonTitle;
  final VoidCallback buttonAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            description ?? AppLocalizations.of(context)!.unknownErrorSubtitle,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: TextButton(
                onPressed: buttonAction,
                child: Text(buttonTitle ??
                    AppLocalizations.of(context)!.unknownErrorButton)),
          ),
        ],
      ),
    );
  }
}
