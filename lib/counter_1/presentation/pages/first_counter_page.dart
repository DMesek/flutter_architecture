import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/first_notifier.dart';

class FirstCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(firstNotifierProvider).add(),
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          const _CenterCounterText(),
          Positioned(
            bottom: 50,
            left: 100,
            child: RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('second'),
              child: const Text('Next page!'),
            ),
          ),
        ],
      ),
    );
  }
}

class _CenterCounterText extends ConsumerWidget {
  const _CenterCounterText();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(firstNotifierProvider.state);
    return Center(
      child: Text('First Counter $count'),
    );
  }
}
