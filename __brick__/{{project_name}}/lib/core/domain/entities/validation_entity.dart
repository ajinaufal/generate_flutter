import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retinol/core/core.dart';
import 'package:retinol/core/domain/entities/meta_entity.dart';

part 'banner_entity.freezed.dart';

@freezed
class ValidationEntity with _$ValidationEntity {
  const factory ValidationEntity({
    String? messages,
    bool? validation,
  }) = _ValidationEntity;
}
