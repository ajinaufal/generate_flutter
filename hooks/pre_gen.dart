import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;
  final state = context.vars['state'] as String;
  context.vars = {
    ...context.vars,
    'use_bloc': state == 'bloc',
    'use_riverpod': state == 'riverpod',
  };
  var progress = logger.progress('update flutter to state $state');
  progress.complete();
}
