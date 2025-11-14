import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bloc_rewards/config/styles/app_colors.dart';
import 'package:bloc_rewards/core/presentation/routes/route_configuration.dart';
import 'package:bloc_rewards/shared/widgets/components/app_avatar.dart';
import 'package:bloc_rewards/shared/widgets/components/app_dialogs.dart';
import 'package:bloc_rewards/shared/widgets/components/failure_component.dart';
import 'package:bloc_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:bloc_rewards/config/paths/images_paths.dart';
import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:bloc_rewards/generated/l10n.dart';
import 'package:bloc_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:bloc_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:bloc_rewards/features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:bloc_rewards/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:bloc_rewards/features/profile/presentation/widgets/profile_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../shared/widgets/components/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).profile,
      ),
      body: BlocListener<ProfileBloc, BaseState<ProfileEntity>>(
        listener: (context, state) {
          if (state.isSuccess || state.isError) {
            _refreshController.loadComplete();
            _refreshController.refreshCompleted();
          }
        },
        child: SmartRefresher(
          controller: _refreshController,
          onRefresh: () => _getProfile(context),
          child: ListView(
            children: [
              const SizedBox(height: 40),
              buildUserInfo(context),
              const SizedBox(height: 40),
              buildEmail(context),
              buildDivider(),
              buildPoints(context),
              buildDivider(),
              buildProfileTiles(context),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPoints(BuildContext context) {
    return BlocBuilder<ProfileBloc, BaseState<ProfileEntity>>(
        builder: (context, state) {
      if (state.isInit) _getProfile(context);
      if (state.isError) {
        return FailureComponent(
            failure: state.failure,
            refresh: true,
            retry: () => _getProfile(context));
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfoColumn(context,
              icon: ImagesPaths.balanceSvg,
              title: S.of(context).balance,
              value: state.isLoading ? "-" : state.data?.balance ?? ''),
          buildInfoColumn(context,
              icon: ImagesPaths.redeemSvg,
              title: S.of(context).redeem,
              value: state.isLoading ? "-" : state.data?.redeemedPoints ?? ''),
          buildInfoColumn(context,
              icon: ImagesPaths.totalEarnSvg,
              title: S.of(context).totalEarn,
              value: state.isLoading ? "-" : state.data?.totalPoints ?? '')
        ],
      );
    });
  }

  void _getProfile(BuildContext context) {
    context.read<ProfileBloc>().add(const FetchProfileEvent());
  }

  Divider buildDivider() =>
      const Divider(height: 30, color: AppColors.grey, thickness: 0.5);

  Widget buildEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          const Icon(Icons.mail, color: AppColors.white1),
          const SizedBox(width: 15),
          Text(CacheStorageServices().email,
              style: context.f12400?.copyWith(color: AppColors.grey)),
        ],
      ),
    );
  }

  Padding buildUserInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          const AppAvatar(radius: 40),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(CacheStorageServices().fullname,
                    style: context.f18700?.copyWith(color: AppColors.white1)),
                Text("@${CacheStorageServices().username}",
                    style: context.f14400?.copyWith(color: AppColors.grey))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildInfoColumn(BuildContext context,
      {required String icon, required String title, required String value}) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, width: 40.w),
            Text(title,
                style: context.f14600
                    ?.copyWith(color: AppColors.white1, height: 1.5)),
            Text(value,
                style: context.f14400
                    ?.copyWith(color: AppColors.white1, height: 1.5)),
          ],
        ),
      ),
    );
  }

  Widget buildProfileTiles(BuildContext context) {
    return Column(
      children: [
        ProfileTile(
            icon: ImagesPaths.historySvg,
            title: S.of(context).history,
            onTap: () {
              context.goToTransactions();
            }),
        ProfileTile(
            icon: ImagesPaths.termsSvg,
            title: S.of(context).privacyPolicy,
            onTap: () {
              context.goToTerms();
            }),
        ProfileTile(
            icon: ImagesPaths.contactUsSvg,
            title: S.of(context).contactUs,
            onTap: () {
              context.goToContactUs();
            }),
        ProfileTile(
            icon: ImagesPaths.signOutSvg,
            title: S.of(context).signOut,
            onTap: () async {
              final confirmed = await AppDialogs.showConfirmDialog(context,
                      text: S.of(context).areYouSureToSignOut,
                      confirmText: S.of(context).signOut);
              if (confirmed && context.mounted) {
                context.read<AppConfigBloc>().add(const LogOutEvent());
                context.goToLogin();
              }
            }),
        ProfileTile(
            icon: ImagesPaths.deleteAccountSvg,
            title: S.of(context).deleteAccount,
            onTap: () async {
              final confirmed = await AppDialogs.showConfirmDialog(context,
                      text: S.of(context).areYouSureToDeleteAccount,
                      confirmText: S.of(context).delete);
              if (confirmed && context.mounted) {
                context
                    .read<DeleteAccountBloc>()
                    .add(const DeleteAccountButtonPressedEvent());
                context.read<AppConfigBloc>().add(const LogOutEvent());
                context.goToLogin();
              }
            },
            red: true),
      ],
    );
  }
}
