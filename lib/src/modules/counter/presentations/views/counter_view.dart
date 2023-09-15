import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:clean_architecture/src/modules/shared/base/base_screen.dart';
import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:clean_architecture/src/modules/counter/presentations/bloc/counter_bloc.dart';
import 'package:clean_architecture/src/modules/counter/presentations/widgets/counter_fab.dart';
import 'package:clean_architecture/src/modules/counter/presentations/widgets/counter_text.dart';

class CounterView extends BaseScreen {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CounterText(
            label: 'You have pushed the button this many times:',
            labelStyle: AppTextStyles.body,
          ),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.toString(),
                style: AppTextStyles.bodyLarge,
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget? floatingActionButton(BuildContext context) {
    return CounterFab(
      onPressed: () => increment(context),
    );
  }

  void increment(BuildContext context) {
    context.read<CounterBloc>().add(IncrementEvent());
  }
}
