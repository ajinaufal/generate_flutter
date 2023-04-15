import 'package:{{project_name}}/core/core.dart';
import 'package:dartz/dartz.dart';

class GetExampleUsecase {
  const GetExampleUsecase({required this.repository});
  final ExampleRepository repository;

  Future<Either<Failure, ExampleEntity>> execute() {
    return repository.getExample();
  }
}
