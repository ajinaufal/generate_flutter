import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  // String flutterVersion = context.vars['flutter_version'];
  // var progress =
  //     context.logger.progress('Installing... flutter version: $flutterVersion');
  // await Process.run('fvm', ['install', '$flutterVersion'], runInShell: true);
  // await Process.run('fvm', ['use', '$flutterVersion'], runInShell: true);
  // progress.complete();

  var progress = context.logger.progress('Cleaning workspace...');
  await Process.run('fvm', ['flutter', 'clean']);
  progress.complete();

  progress = context.logger.progress('Executing... pubspec update');
  await Process.run('flutter', [
    'pub',
    'add',
    'dartz',
    'dio',
    'equatable',
    'flutter_bloc',
    'freezed',
    'freezed_annotation',
    'get_it',
    'go_router',
    'hive_flutter',
    'internet_connection_checker',
    'intl',
    'json_annotation'
  ]);
  await Process.run('fvm', [
    'flutter',
    'pub',
    'add',
    '--dev',
    'analyzer: ^5.4.0',
    'build_runner',
    'dart_code_metrics',
    'flutter_lints',
    'json_serializable',
  ]);
  progress.complete();

  progress = context.logger.progress('Updating... pod repo');
  await Process.run('pod', ['repo', 'update']);
  progress.complete();

  // progress = context.logger.progress('Cleaning bricks...');
  // await Process.run('mason', ['remove', 'hello'], runInShell: true);
  // progress.complete();

  progress = context.logger.progress('Generate model...');
  await Process.run(
      'fvm', ['flutter', 'pub', 'run', 'build_runner', 'build', '-d']);
  progress.complete();

  progress = context.logger.progress('Generate l10n...');
  await Process.run('fvm', ['flutter', 'gen-l10n']);
  progress.complete();

  progress = context.logger.progress('Updating... files structure');
  await Process.run('dart', ['format', '.']);
  progress.complete();
}
