import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/second_notifier.dart';

class SecondCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(secondNotifierProvider).add(),
        child: const Icon(Icons.add),
      ),
      body: const _CenterCounterText(),
    );
  }
}

class _CenterCounterText extends ConsumerWidget {
  const _CenterCounterText();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(secondNotifierProvider.state);
    return Center(
      child: Text('First Counter $count'),
    );
  }
}
