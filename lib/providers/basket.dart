import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../models/sausage_roll.dart';

class Basket extends ChangeNotifier {
  final List<SausageRoll> _items = [];

  List<SausageRoll> get items => _items;

  double get totalPrice =>
      _items.map((item) => item.eatOutPrice).fold(0, (a, b) => a + b);

  void addToBasket(SausageRoll sausageRoll) {
    _items.add(sausageRoll);
    notifyListeners();
  }
}

class BasketState extends Equatable {
  final List<SausageRoll> items;
  final double totalPrice;

  const BasketState({
    required this.items,
    required this.totalPrice,
  });

  @override
  List<Object?> get props => [items, totalPrice];

  BasketState copyWith({
    List<SausageRoll>? items,
    double? totalPrice,
  }) {
    return BasketState(
      items: items ?? this.items,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}
