import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_entity.freezed.dart';

@freezed
class ValidationEntity with _$ValidationEntity {
  const factory ValidationEntity({
    String? messages,
    bool? validation,
  }) = _ValidationEntity;
}
