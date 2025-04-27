
import 'package:batch_34a/view/first_view.dart' show FirstView;
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstView());
  }
}