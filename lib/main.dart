import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_1/presentation/pages/first_counter_page.dart';
import 'counter_1/presentation/pages/second_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Q Flutter Architecture',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (_) => FirstCounterPage(),
          'second': (_) => SecondCounterPage(),
        },
      ),
    );
  }
}
