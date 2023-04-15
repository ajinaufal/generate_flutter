import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_entity.freezed.dart';

@freezed
class ExampleEntity with _$ExampleEntity {
  const factory ExampleEntity({
    int? count,
    String? next,
    dynamic? previous,
    List<ResultEntity>? results,
  }) = _ExampleEntity;
}

@freezed
class ResultEntity with _$ResultEntity {
  const factory ResultEntity({
    String? name,
    String? url,
  }) = _ResultEntity;
}
