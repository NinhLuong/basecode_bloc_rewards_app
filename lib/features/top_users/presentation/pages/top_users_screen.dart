import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/top_users/presentation/widgets/top_users_tab.dart';

class TopUsersScreen extends StatelessWidget {
  const TopUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          titleText: S.of(context).topUsers,
          height: kToolbarHeight + 40.w,
          bottom: TabBar(
              labelStyle: context.f16600,
              labelColor: AppColors.yellow2,
              unselectedLabelColor: Colors.white,
              indicatorColor: AppColors.yellow2,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(text: S.of(context).allTime),
                Tab(text: S.of(context).last15Days),
              ]),
        ),
        body: TabBarView(
          children: [
            TopUsersTap(),
            TopUsersTap(halfMonth: true),
          ],
        ),
      ),
    );
  }
}
