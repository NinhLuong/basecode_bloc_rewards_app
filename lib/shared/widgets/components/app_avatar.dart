import 'package:flutter/material.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

class AppAvatar extends StatelessWidget {
  final int? index;
  final double? radius;

  const AppAvatar({super.key, this.index, this.radius});

  @override
  Widget build(BuildContext context) {
    final int avatarIndex = index ?? CacheStorageServices().avatar;
    return Hero(
      tag: AppConstants.avatarTag(avatarIndex),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(ImagesPaths.avatarsPng[avatarIndex]),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
