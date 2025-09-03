import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/features/tasks/presentation/routes/tasks_route.dart';

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
            context.push(TasksRoute.name);
          },
          child: Image.asset(ImagesPaths.tasksPng)),
    );
  }
}
