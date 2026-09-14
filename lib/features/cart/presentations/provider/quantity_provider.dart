import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuantityNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  int get quantity => state;

  void increment() {
    state++;
  }

  void decrement() {
    if (state > 0) {
      state--;
    }
  }

  void setQuantity(int quantity) {
    if (quantity < 0) return;
    state = quantity;
  }

  void reset() {
    state = 0;
  }
}

final addToCartProvider =
    NotifierProvider<QuantityNotifier, int>(QuantityNotifier.new);