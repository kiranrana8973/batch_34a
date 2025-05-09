import 'package:batch_34a/view/arithmetic_view.dart';
import 'package:batch_34a/view/si_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'), centerTitle: true),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return const ArithmeticView();
                    },
                  ),
                );
              },
              child: const Text('Arithmetic'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return const SIView();
                    },
                  ),
                );
              },
              child: const Text('SI'),
            ),
          ],
        ),
      ),
    );
  }
}
