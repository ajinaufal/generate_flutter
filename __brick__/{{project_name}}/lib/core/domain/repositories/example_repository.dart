import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/core/data/models/failures/failure.dart';
import 'package:{{project_name}}/core/domain/entities/example_entity.dart';

abstract class ExampleRepository {
  Future<Either<Failure, ExampleEntity>> getExample();
}
