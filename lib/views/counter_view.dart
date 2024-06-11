// lib/views/counter_view.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
            ),
            Text(
              '${viewModel.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: viewModel.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: viewModel.decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
