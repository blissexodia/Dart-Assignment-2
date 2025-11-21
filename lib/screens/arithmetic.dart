import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = '';

  void calculate(String op) {
    final x = double.tryParse(a.text);
    final y = double.tryParse(b.text);
    if (x == null || y == null) return;

    double r = 0;
    if (op == '+') r = x + y;
    if (op == '-') r = x - y;
    if (op == '*') r = x * y;
    if (op == '/') r = y == 0 ? 0 : x / y;

    setState(() => result = r.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Arithmetic'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: a,
              decoration: const InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              controller: b,
              decoration: const InputDecoration(labelText: 'Number 2'),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                FilledButton(
                  onPressed: () => calculate('+'),
                  child: const Text('+'),
                ),
                FilledButton(
                  onPressed: () => calculate('-'),
                  child: const Text('-'),
                ),
                FilledButton(
                  onPressed: () => calculate('*'),
                  child: const Text('*'),
                ),
                FilledButton(
                  onPressed: () => calculate('/'),
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text('Result: $result', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
