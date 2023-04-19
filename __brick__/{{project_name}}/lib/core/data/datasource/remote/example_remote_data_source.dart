import 'package:pokemon/core/core.dart';

abstract class ExampleRemoteDataSource {
  Future<ExampleEntity> getExample();
}

class ExampleRemoteDataSourceImpl implements ExampleRemoteDataSource {
  final ApiService apiService;

  ExampleRemoteDataSourceImpl({required this.apiService});

  @override
  Future<ExampleEntity> getExample() async {
    final resp = await apiService.get('/pokemon');
    final model = ExampleModel.fromJson(resp.data);
    if (resp.statusCode == 200) return model.toEntity();
    throw const ServerException();
  }
}
