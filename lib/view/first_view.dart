import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int result = 0;

  // textEditiingController
  final firstContoller = TextEditingController();
  final secondContoller = TextEditingController();

  // step 1. key
  final myKey = GlobalKey<FormState>();

  String? groupValue = "myGroup";

  void calculate() {
    if (groupValue == "add") {
      setState(() {
        result =
            int.parse(firstContoller.text) + int.parse(secondContoller.text);
      });
    } else if (groupValue == "sub") {
      setState(() {
        result =
            int.parse(firstContoller.text) - int.parse(secondContoller.text);
      });
    } else if (groupValue == "mul") {
      setState(() {
        result =
            int.parse(firstContoller.text) * int.parse(secondContoller.text);
      });
    } else if (groupValue == "div") {
      setState(() {
        result =
            int.parse(firstContoller.text) ~/ int.parse(secondContoller.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic View"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter first no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: firstContoller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter second no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
                controller: secondContoller,
              ),
              SizedBox(height: 8),
              ListTile(
                title: const Text('Addition'),
                leading: Radio(
                  value: 'add',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Subtraction'),
                leading: Radio(
                  value: 'sub',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Multiplication'),
                leading: Radio(
                  value: 'mul',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Division'),
                leading: Radio(
                  value: 'div',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      calculate();
                    }
                  },
                  child: Text("Calculate"),
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Result : $result",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
