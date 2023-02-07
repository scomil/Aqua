import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapLoadingIndicator extends StatelessWidget {
  const SwapLoadingIndicator({
    Key? key,
    this.visible = false,
    this.subtitle = '',
  }) : super(key: key);

  final bool visible;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return Visibility(
          visible: visible,
          child: Stack(
            children: [
              Container(
                color: Colors.black.withOpacity(0.6),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Theme.of(context).colorScheme.secondaryVariant,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Text(
                        subtitle,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: AquaColors.persianGreen),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
