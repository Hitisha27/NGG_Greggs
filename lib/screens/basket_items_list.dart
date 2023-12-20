import 'package:flutter/material.dart';
import 'package:ngg_greggs/providers/basket.dart';
import 'package:provider/provider.dart';

class BasketItemsList extends StatelessWidget {
  const BasketItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    final basket = context.watch<Basket>();

    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemCount: basket.items.length,
        itemBuilder: (context, index) {
          final item = basket.items[index];
          return ListTile(
            title: Text(item.articleName),
            subtitle: Text('Price: \$${item.eatOutPrice.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
