import 'package:flutter/material.dart';
import 'package:ngg_greggs/screens/basket_items_list.dart';
import 'package:provider/provider.dart';

import '../providers/basket.dart';

class BasketList extends StatelessWidget {
  const BasketList({super.key});

  @override
  Widget build(BuildContext context) {
    final basket = context.watch<Basket>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Basket',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const BasketItemsList(),
        Text('Total Price: \$${basket.totalPrice.toStringAsFixed(2)}'),
      ],
    );
  }
}
