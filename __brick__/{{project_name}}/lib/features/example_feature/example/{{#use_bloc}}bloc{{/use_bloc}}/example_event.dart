part of 'example_bloc.dart';

abstract class ExampleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ExampleReset extends ExampleEvent {}

class ExampleStarted extends ExampleEvent {
  ExampleStarted();

  @override
  List<Object?> get props => [];
}
