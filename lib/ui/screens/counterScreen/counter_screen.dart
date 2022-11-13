import 'package:flutter/material.dart';
import 'counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc _myCounterBloc = BlocProvider.of<CounterBloc>(context);
    print("Current state ${_myCounterBloc.state}");

    return Scaffold(
      appBar: AppBar(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: BlocBuilder<CounterBloc, int>(
        builder: ((context, state) => Center(
              child: Text("Counter value $state"),
            )),
      ),
    );
  }
}
