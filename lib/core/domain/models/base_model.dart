import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

@immutable
abstract class BaseModel<T extends BaseEntity> {
  const BaseModel();
  
  T toEntity();
}
