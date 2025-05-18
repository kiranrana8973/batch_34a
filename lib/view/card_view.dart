import 'package:batch_34a/common/common_card_view.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card View')),
      body: Column(
        children: [
          const CommonCardView(title: "Card 1", color: Colors.red),
          const CommonCardView(title: "Card 2", color: Colors.green),
          const CommonCardView(title: "Card 3", color: Colors.blue),
        ],
      ),
    );
  }
}
