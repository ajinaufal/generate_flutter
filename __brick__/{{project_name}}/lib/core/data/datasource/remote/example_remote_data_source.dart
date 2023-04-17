import 'package:{{project_name}}/core/core.dart';

abstract class ExampleRemoteDataSource {
  Future<ExampleEntity> getExample();
}

class ExampleRemoteDataSourceImpl implements ExampleRemoteDataSource {
  final ApiService apiService;

  ExampleRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ExampleEntity> getExample() async {
    final resp = await apiService.get('/pokemon');
    if (resp.statusCode == 200) {
      return ExampleModel.fromJson(resp.data).toEntity();
    } else {
      throw ServerException();
    }
  }
}
