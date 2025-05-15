import 'package:batch_34a/common/my_snackbar.dart';
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
                showMySnackbar(context: context, content: "COntainer 1 tapped");
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
                showMySnackbar(
                  context: context,
                  content: "COntainer 2 tapped",
                  color: Colors.red,
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
