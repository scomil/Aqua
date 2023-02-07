import 'package:aqua/data/provider/swap/sideswap_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwapAssetsFlipButton extends StatelessWidget {
  const SwapAssetsFlipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.r,
      height: 48.r,
      child: TextButton(
        onPressed: (() {
          context.read(sideswapAssetsPairProvider).swapAssets();
          // TODO: set or clear amounts too?
        }),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/exchange_swap.svg',
                width: 20.w,
                height: 20.h,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
