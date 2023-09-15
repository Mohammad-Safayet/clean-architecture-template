import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:clean_architecture/src/modules/counter/presentations/bloc/counter_bloc.dart';
import 'package:clean_architecture/src/modules/counter/presentations/views/counter_view.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: CounterView(),
    );
  }
}
