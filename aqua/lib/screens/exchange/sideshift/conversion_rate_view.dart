import 'package:aqua/common/theme/colors.dart';
import 'package:aqua/data/provider/sideshift/sideshift_provider.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConversionRateView extends ConsumerWidget {
  const ConversionRateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final data = watch(sideShiftAssetsListProvider);
    final deliverAsset = watch(deliverAssetProvider);
    final receiveAsset = watch(receiveAssetProvider);
    final exchangeInfo = watch(exchangeRateProvider);
    final rate = Decimal.tryParse(exchangeInfo?.rate ?? '');
    final formattedRate =
        rate?.toStringAsFixed(rate.toDouble() > 10000 ? 2 : 8) ?? '?';

    return data.maybeWhen(
      orElse: () => const SizedBox.shrink(),
      data: (data) {
        if (deliverAsset == null || receiveAsset == null) {
          return const SizedBox.shrink();
        }
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
          decoration: BoxDecoration(
            color: AquaColors.isabelline,
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Text(
            '1 ${deliverAsset.coin} = $formattedRate ${receiveAsset.coin}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: 14.sp,
                  color: SideshiftColors.darkCharcoal,
                ),
          ),
        );
      },
    );
  }
}
