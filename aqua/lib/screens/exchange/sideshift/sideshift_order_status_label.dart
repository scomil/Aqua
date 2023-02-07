import 'package:aqua/data/models/sideshift.dart';
import 'package:aqua/data/provider/sideshift/sideshift_order_provider.dart';
import 'package:aqua/screens/exchange/sideshift/sideshift_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideshiftOrderStatusLabel extends ConsumerWidget {
  const SideshiftOrderStatusLabel({Key? key}) : super(key: key);

  static final _statusColors = {
    OrderStatus.waiting: Colors.yellow,
    OrderStatus.pending: Colors.amber,
    OrderStatus.processing: Colors.orange,
    OrderStatus.review: Colors.blue,
    OrderStatus.settling: Colors.lightGreen,
    OrderStatus.settled: Colors.green,
    OrderStatus.refund: Colors.redAccent,
    OrderStatus.refunding: Colors.redAccent,
    OrderStatus.refunded: Colors.red,
  };

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final order = watch(orderStatusProvider);
    var status = order?.status;
    final color = _statusColors[status] ?? _statusColors.values.first;
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Text(
        status?.name.toUpperCase() ?? '-',
        style: SideshiftTheme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
      ),
    );
  }
}
