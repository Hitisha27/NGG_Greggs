import 'package:flutter/material.dart';

import '../models/sausage_roll.dart';

class SausageRollDetails extends StatelessWidget {
  final SausageRoll sausageRoll;

  const SausageRollDetails({super.key, required this.sausageRoll});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sausageRoll.articleName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Image.network(
          sausageRoll.imageUri,
          height: 150,
        ),
        Text('Price: \$${sausageRoll.eatOutPrice.toStringAsFixed(2)}'),
        const SizedBox(height: 16),
      ],
    );
  }
}
