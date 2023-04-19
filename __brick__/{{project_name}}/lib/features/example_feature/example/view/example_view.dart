import 'package:flutter/material.dart';
{{ #use_bloc }}
import 'package:flutter_bloc/flutter_bloc.dart';
{{ /use_bloc }}

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
