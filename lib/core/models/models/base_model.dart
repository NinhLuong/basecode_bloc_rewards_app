import 'package:magic_rewards/core/models/entities/base_entity.dart';

abstract class BaseModel<T extends BaseEntity> {
  T toEntity();
}
