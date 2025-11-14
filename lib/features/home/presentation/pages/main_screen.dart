import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bloc_rewards/config/styles/app_colors.dart';
import 'package:bloc_rewards/config/styles/app_gradient.dart';
import 'package:bloc_rewards/config/styles/app_shadow.dart';
import 'package:bloc_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:bloc_rewards/config/paths/images_paths.dart';
import 'package:bloc_rewards/config/di/injectable_config.dart';
import 'package:bloc_rewards/generated/l10n.dart';
import 'package:bloc_rewards/features/home/presentation/pages/home_screen.dart';
import 'package:bloc_rewards/features/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:bloc_rewards/features/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:bloc_rewards/features/profile/presentation/pages/profile_screen.dart';
import 'package:bloc_rewards/features/rewards/presentation/pages/redeem_screen.dart';
import 'package:bloc_rewards/features/tasks/presentation/pages/tasks_screen.dart';
import 'package:bloc_rewards/features/top_users/presentation/pages/top_users_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[0]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[0],
            color: AppColors.primary),
        label: S.current.home,
        backgroundColor: Colors.transparent
        // backgroundColor: AppColors.lightBlack.withValues(alpha:0.75)
        ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[1]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[1],
            color: AppColors.primary),
        label: S.current.topUsers,
        backgroundColor: Colors.transparent
        // backgroundColor: AppColors.lightBlack.withValues(alpha:0.5)
        ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[2]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[2],
            color: AppColors.primary),
        label: S.current.tasks,
        backgroundColor: Colors.transparent),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[3]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[3],
            color: AppColors.primary),
        label: S.current.redeem,
        backgroundColor: Colors.transparent),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[4]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[4]),
        label: S.current.profile,
        backgroundColor: Colors.transparent),
  ];

  final List screens = [
    HomeScreen(),
    const TopUsersScreen(),
    const TasksScreen(),
    const RedeemScreen(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<DeleteAccountBloc>(),
        ),
      ],
      child: ProfileScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.blackGradient,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16)),
            boxShadow: [AppShadows.blackShadow],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.white,
              currentIndex: currentIndex,
              elevation: 0,
              items: bottomNavBarItems,
              onTap: changeScreen,
            ),
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
