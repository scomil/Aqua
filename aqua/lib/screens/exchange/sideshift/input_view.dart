import 'package:aqua/common/input_formatters/comma_text_input_formatter.dart';
import 'package:aqua/common/input_formatters/decimal_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputView extends StatefulWidget {
  const TextInputView({
    Key? key,
    this.initialValue,
    this.hintText,
    this.error = false,
    this.obscureText = false,
    this.readOnly = false,
    this.filled = true,
    this.leading,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
  }) : super(key: key);

  final String? initialValue;
  final String? hintText;
  final bool error;
  final bool obscureText;
  final bool readOnly;
  final bool filled;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Widget? leading;

  @override
  State<TextInputView> createState() => _TextInputViewState();
}

class _TextInputViewState extends State<TextInputView> {
  late TextEditingController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = widget.controller ?? TextEditingController();
    if (widget.initialValue?.isNotEmpty ?? false) {
      _controller.text = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: widget.filled
            ? Theme.of(context).colorScheme.primaryContainer
            : null,
        border: widget.error ? Border.all(color: Colors.red) : null,
      ),
      child: Center(
        child: Row(
          children: [
            if (widget.leading != null)
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: widget.leading!,
              ),
            Expanded(
              child: TextField(
                controller: _controller,
                keyboardType: widget.keyboardType,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 16.sp,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                cursorColor: Theme.of(context).colorScheme.onPrimary,
                readOnly: widget.readOnly,
                obscureText: widget.obscureText,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  filled: widget.filled,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.h,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
                inputFormatters: widget.inputFormatters ??
                    [
                      CommaTextInputFormatter(),
                      DecimalTextInputFormatter(decimalRange: 12),
                    ],
                textAlign: TextAlign.start,
                onChanged: (s) => widget.onChanged?.call(s),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
