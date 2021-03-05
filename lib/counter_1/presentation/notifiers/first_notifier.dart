import 'package:flutter_riverpod/flutter_riverpod.dart';

final firstNotifierProvider = StateNotifierProvider<FirstNotifier>((_) {
  return FirstNotifier();
});

class FirstNotifier extends StateNotifier<int> {
  FirstNotifier([int initial]) : super(initial ?? 0);

  void add() => state = state + 1;
}
