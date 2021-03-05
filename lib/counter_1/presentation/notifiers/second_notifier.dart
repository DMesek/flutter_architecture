import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:q_architecture/counter_1/presentation/data/numbers_repository.dart';

final secondNotifierProvider =
    StateNotifierProvider.autoDispose<SecondNotifier>((ref) {
  return SecondNotifier(ref.watch);
});

class SecondNotifier extends StateNotifier<int> {
  SecondNotifier(this.watch, [int initial]) : super(initial ?? 0) {
    watch(streamProvider).when(
      data: (data) => state = 5 * data,
      loading: () => state = 10000,
      error: (_, __) => state = -10000,
    );
  }

  final Reader watch;

  void add() => state = state + 5;

  @override
  void dispose() {
    print('im disposed!');
    super.dispose();
  }
}
