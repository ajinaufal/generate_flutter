{{#use_riverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/use_riverpod}}
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:{{project_name}}/app/app_router.dart';
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class {{app_name.camelCase()}}App extends StatelessWidget {
  const {{app_name.camelCase()}}App({super.key});
  @override
  Widget build(BuildContext context) {
    {{#use_riverpod}}
    final router = ref.watch(routerProvider);
    {{/use_riverpod}}
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          title: {{app_name.sentenceCase()}},
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          {{#use_riverpod}}
          theme: AppTheme.lightMode,
          {{/use_riverpod}}
          {{#use_bloc}}
          darkTheme: ThemeData.dark(),
          {{/use_bloc}}
        );
      },
    );
  }
}