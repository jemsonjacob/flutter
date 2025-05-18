import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

// Declare it

// final _debouncer = Debouncer(milliseconds: 500);
// and trigger it

// onTextChange(String text) {
//   _debouncer.run(() => print(text));
// }
