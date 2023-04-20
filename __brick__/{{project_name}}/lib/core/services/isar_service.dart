import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokemon/core/data/models/database/database.dart';

final initIsarProvider = FutureProvider((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final listDB = [ConfigAppSchema];
  return Isar.open(listDB, directory: dir.path);
});

final configAppProvider = FutureProvider.autoDispose<IsarCollection<ConfigApp>>(
  (ref) async {
    final isar = await ref.read(initIsarProvider.future);
    return isar.configApps;
  },
);
