{{#use_bloc}}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{project_name}}/injector/injector.dart';
{{/use_bloc}}

{{#use_riverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/use_riverpod}}

import 'package:flutter/material.dart';
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/features/example/example.dart';
import 'package:go_router/go_router.dart';


{{#use_bloc}}
final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');
{{/use_bloc}}
{{#use_riverpod}}
final routeNavigatorKey = GlobalKey<NavigatorState>();
{{/use_riverpod}}

{{#use_bloc}}
final router = GoRouter(
  navigatorKey: _key,
  debugLogDiagnostics: true,
  initialLocation: '/',
  observers: [RouterObserver()],
  routes: routes,
);
{{/use_bloc}}

{{#use_riverpod}}
final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: routeNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/',
    observers: [RouterObserver()],
    routes: routes,
    refreshListenable: notifier,
    redirect: notifier.redirect,
  );
});
{{/use_riverpod}}

List<GoRoute> get routes {
  return [
    GoRoute(
      {{#use_riverpod}}
      parentNavigatorKey: _shellNavigatorKey,
      {{/use_riverpod}}
      name: 'home',
      path: '/',
      {{#use_bloc}}
      builder: (context, state) => BlocProvider(
        create: (context) => di<GuessNationalityBloc>(),
        child: const GuessNationalityPage(),
      ),
      {{/use_bloc}}
      {{#use_riverpod}}
      builder: (context, state) => const ExampleView(),
      {{/use_riverpod}}
    ),
  ];
}
