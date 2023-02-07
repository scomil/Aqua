import 'package:aqua/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final currencyIcons = {
  'eur': FontAwesome.euro,
  'gbp': FontAwesome.gbp,
  'sats': FontAwesome.bitcoin,
};

class BitcoinReserveCurrencyIcon extends StatelessWidget {
  const BitcoinReserveCurrencyIcon({
    Key? key,
    this.size,
    this.background,
    required this.currency,
  }) : super(key: key);

  final String? currency;
  final double? size;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: background ?? AquaColors.darkJungleGreen,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Icon(
        currencyIcons[currency] ?? FontAwesome.usd,
        size: size ?? 26.r,
      ),
    );
  }
}
