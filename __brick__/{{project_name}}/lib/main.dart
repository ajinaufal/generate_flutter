import 'app/app.dart';
import 'package:{{project_name}}/bootstrap.dart';

void main() {
  bootstrap(() => const {{app_name.camelCase()}}App());
}
