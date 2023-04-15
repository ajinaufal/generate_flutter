import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureRepositoriesInjector() async {
  di.registerLazySingleton<ExampleRepository>(
    () => ExampleRepositoryImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );
}
