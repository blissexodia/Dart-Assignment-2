import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final p = TextEditingController();
  final r = TextEditingController();
  final t = TextEditingController();
  String result = '';

  void calculate() {
    final P = double.tryParse(p.text);
    final R = double.tryParse(r.text);
    final T = double.tryParse(t.text);
    if (P == null || R == null || T == null) return;

    setState(() => result = ((P * R * T) / 100).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Simple Interest'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: p,
              decoration: const InputDecoration(labelText: 'Principal'),
            ),
            TextField(
              controller: r,
              decoration: const InputDecoration(labelText: 'Rate'),
            ),
            TextField(
              controller: t,
              decoration: const InputDecoration(labelText: 'Time'),
            ),
            const SizedBox(height: 20),
            FilledButton(onPressed: calculate, child: const Text('Calculate')),
            const SizedBox(height: 20),
            Text('SI: $result', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
