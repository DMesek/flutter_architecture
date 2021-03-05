import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider.autoDispose((ref) {
  final _controller = StreamController<int>();

  var _number = 0;
  ref.onDispose(() {
    _controller.close();
  });

  for (var i = 0; i < 10; i++) {
    Future.delayed(Duration(seconds: i * 1), () {
      if (_controller.isClosed) return;
      _controller.sink.add(_number++);
    });
  }
  return _controller.stream;
});
