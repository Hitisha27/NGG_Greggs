import 'package:flutter/material.dart';
import 'package:ngg_greggs/models/sausage_roll.dart';
import 'package:ngg_greggs/providers/basket.dart';
import 'package:ngg_greggs/screens/add_to_basket_button.dart';
import 'package:ngg_greggs/screens/basket_list.dart';
import 'package:ngg_greggs/services/sausage_roll_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Basket(),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greggs Sausage Roll App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SausageRollDetails(
              sausageRoll: SausageRoll(
                articleCode: "1000446",
                shopCode: "1234",
                availableFrom: DateTime.parse("2020-12-30T00:00:00Z"),
                availableUntil: DateTime.parse("2045-05-13T23:59:59Z"),
                eatOutPrice: 1.05,
                eatInPrice: 1.15,
                articleName: "Sausage Roll",
                dayParts: const ["Breakfast", "Lunch", "Evening"],
                internalDescription: "Sausage Roll",
                customerDescription:
                    "The Nation’s favourite Sausage Roll.\n\nMuch like "
                    "Elvis was hailed the King of Rock, many have appointed Greggs as the "
                    "(unofficial) King of Sausage Rolls.\n\nFreshly baked in our shops "
                    "throughout the day, this British classic is made from seasoned sausage meat "
                    "wrapped in layers of crisp, golden puff pastry, as well as a large dollop "
                    "of TLC. It’s fair to say, we’re proper proud of them.\n\nAnd that’s it. No "
                    "clever twist. No secret ingredient. It’s how you like them, so that’s how "
                    "we make them.\n\n",
                imageUri:
                    "https://articles.greggs.co.uk/images/1000446.png?1623244287449",
                thumbnailUri:
                    "https://articles.greggs.co.uk/images/1000446-thumb.png?1623244287450",
              ),
            ),
            const SizedBox(height: 16),
            const AddToBasketButton(),
            const SizedBox(height: 16),
            const BasketList(),
            const SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}
