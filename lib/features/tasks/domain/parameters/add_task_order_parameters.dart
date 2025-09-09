import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'add_task_order_parameters.freezed.dart';

@freezed
abstract class AddTaskOrderParameters with _$AddTaskOrderParameters {
  const AddTaskOrderParameters._();

  const factory AddTaskOrderParameters({
    required String accessToken,
    required String accountId,
    required String username,
    required int clientId,
    required String taskId,
    required String commentId,
    required String name,
    required String url,
    required String email,
    required String text,
    required File image,
    required DateTime timeStamp,
  }) = _AddTaskOrderParameters;

  factory AddTaskOrderParameters.create({
    required String taskId,
    required String commentId,
    required String name,
    required String url,
    required String email,
    required String text,
    required File image,
    required DateTime timeStamp,
  }) => AddTaskOrderParameters(
    accessToken: CacheStorageServices().token,
    accountId: CacheStorageServices().accountId,
    username: CacheStorageServices().username,
    clientId: AppConstants.clientId,
    taskId: taskId,
    commentId: commentId,
    name: name,
    url: url,
    email: email,
    text: text,
    image: image,
    timeStamp: timeStamp,
  );

  Future<Map<String, dynamic>> toJson() async => {
        'clientId': clientId,
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'taskId': taskId,
        'commentId': commentId,
        'name': '$name, $url',
        'url': url,
        'email': email,
        'text': text,
        'timeStamp': timeStamp.toIso8601String(),
        'image': await MultipartFile.fromFile(image.path, filename: 'image'),
      };

}
