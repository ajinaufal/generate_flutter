import 'package:{{project_name}}/core/domain/entities/example_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
class ExampleModel with _$ExampleModel {
  const factory Example({
    int? count,
    String? next,
    dynamic? previous,
    List<ResultModel>? results,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);
}

extension ExampleModelX on ExampleModel {
  ExampleEntity toEntity() {
    return ExampleEntity(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    String? name,
    String? url,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

extension ResultModelX on ResultModel {
  ResultEntity toEntity() {
    return ResultEntity(
      name: name,
      url: url,
    );
  }
}
