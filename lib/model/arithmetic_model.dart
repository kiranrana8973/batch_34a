class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({required this.first, required this.second});

  int add() {
    return first + second;
  }

  int sub() {
    return first - second;
  }

  int mul() {
    return first * second;
  }

  double div() {
    if (second == 0) {
      throw Exception('Division by zero');
    }
    return first / second;
  }
}
