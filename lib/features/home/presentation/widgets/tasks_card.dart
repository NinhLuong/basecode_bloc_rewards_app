import 'package:flutter/material.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart';

class TasksCard extends StatelessWidget {
  const TasksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            context.goToTasks();
          },
          child: Image.asset(ImagesPaths.tasksPng)),
    );
  }
}
