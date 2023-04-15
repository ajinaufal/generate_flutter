import 'app/app.dart';
import '{{#use_bloc}}bootstrap.dart{{/use_bloc}}';

void main() {
  bootstrap(() => const {{app_name.camelCase()}}App());
}
