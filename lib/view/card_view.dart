import 'package:batch_34a/common/common_card_view.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card View')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 100; i++) ...{
              if (i % 2 == 0) ...{
                CommonCardView(title: "Card $i", color: Colors.blue),
              } else ...{
                CommonCardView(title: "Card $i", color: Colors.red),
              },
            },
          ],
        ),
      ),
    );
  }
}
