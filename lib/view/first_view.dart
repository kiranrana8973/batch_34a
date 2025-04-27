import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First View"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Text("Hello worsdfsdfld"),
    );
  }
}
