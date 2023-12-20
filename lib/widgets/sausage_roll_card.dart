import 'package:flutter/material.dart';

class SausageRollCard extends StatelessWidget {
  final String articleName;
  final double eatInPrice;

  const SausageRollCard({
    super.key,
    required this.articleName,
    required this.eatInPrice,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(articleName),
      subtitle: Text('Price: \$${eatInPrice.toStringAsFixed(2)}'),
    );
  }
}
