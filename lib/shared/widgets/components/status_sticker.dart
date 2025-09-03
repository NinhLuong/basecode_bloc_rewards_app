import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/config/enums/order_status.dart';
import 'package:magic_rewards/shared/extensions/orders_extensions/orders_extension.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';

class StatusSticker extends StatelessWidget {
  final OrderStatus status;

  const StatusSticker({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color color = switch (status) {
      OrderStatus.pending => AppColors.yellow,
      OrderStatus.completed => AppColors.green1,
      OrderStatus.processing => AppColors.yellow2,
      OrderStatus.rejected => AppColors.orange,
    };
    return Container(
      width: 150.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(status.stringify, style: context.f12600),
    );
  }
}
