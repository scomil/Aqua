import 'dart:async';

import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/passcode_pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasscodeContent extends StatefulWidget {
  const PasscodeContent({
    Key? key,
    required this.title,
    required this.pinColors,
    required this.buttonTitle,
    required this.onChanged,
    required this.onSubmitted,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  final String title;
  final List<Color>? pinColors;
  final String buttonTitle;
  final void Function(String) onChanged;
  final void Function() onSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  PasscodeContentState createState() => PasscodeContentState();
}

class PasscodeContentState extends State<PasscodeContent> {
  late FocusNode passCodeFocusNode;
  late TextEditingController passCodeController;

  @override
  void initState() {
    super.initState();
    passCodeFocusNode = widget.focusNode ?? FocusNode();
    passCodeController = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    passCodeFocusNode.dispose();
    passCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
        Timer(const Duration(milliseconds: 1), () {
          FocusScope.of(context).requestFocus(passCodeFocusNode);
          passCodeController.selection =
              const TextSelection(baseOffset: 0, extentOffset: 0);
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    TextField(
                      autofocus: true,
                      focusNode: passCodeFocusNode,
                      controller: passCodeController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 6,
                      onChanged: widget.onChanged,
                      onSubmitted: (_) {
                        widget.onSubmitted();
                      },
                    ),
                    Container(
                      height: 80.h,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Row(
                        children:
                            List.generate(6, (index) => index).map((index) {
                          final color = widget.pinColors?[index];
                          return Padding(
                            padding: EdgeInsets.only(right: 16.w),
                            child: PasscodePinWidget(color: color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: AquaElevatedButton(
              onPressed: widget.onSubmitted,
              child: Text(widget.buttonTitle),
            ),
          ),
        ],
      ),
    );
  }
}
