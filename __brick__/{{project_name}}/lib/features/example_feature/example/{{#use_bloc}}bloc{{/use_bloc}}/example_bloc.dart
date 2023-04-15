import 'package:{{project_name}}/core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_event.dart';

class ExampleBloc extends Bloc<ExampleEvent, AppStates> {
  final GetExampleUsecase usecase;
  ExampleBloc({
    required this.usecase,
  }) : super(const AppStates.initial()) {
    on<ExampleStarted>(_onExampleStarted);
    on<ExampleReset>(_onExampleReset);
  }

  void _onExampleReset(
    ExampleReset event,
    Emitter<AppStates> emit,
  ) {
    emit(const AppStates.initial());
  }

  _onExampleStarted(
    ExampleStarted event,
    Emitter<AppStates> emit,
  ) async {
    emit(const AppStates.loading());
    final resp = await usecase.execute();
    final updatedState = resp.fold(
      (failure) => AppStates.error(failure),
      (data) => data.results.isEmpty
          ? const AppStates.empty()
          : AppStates.success(data),
    );
    emit(updatedState);
  }
}
