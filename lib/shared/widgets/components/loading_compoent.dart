/// The [LoadingComponent] class is a reusable widget that displays a loading indicator at the center of the screen.
/// It is typically used to indicate that content is being loaded or processed.
library;

import 'package:flutter/material.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';

// TODO: customize Loading component view

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: AppColors.secondary));
  }
}
