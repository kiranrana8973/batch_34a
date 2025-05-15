import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Container 1 tapped"),
                    backgroundColor: Colors.yellow,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.red,
                child: Text("Container 1", style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Container 2 tapped"),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.green,
                child: Text("Container 2", style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
