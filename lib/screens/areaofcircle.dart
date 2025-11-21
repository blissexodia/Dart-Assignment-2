import 'package:flutter/material.dart';
import 'dart:math';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final radius = TextEditingController();
  String result = '';

  void calculate() {
    final r = double.tryParse(radius.text);
    if (r == null) return;

    setState(() => result = (pi * r * r).toStringAsFixed(2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Area of Circle'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: radius,
              decoration: const InputDecoration(labelText: 'Radius'),
            ),
            const SizedBox(height: 20),
            FilledButton(onPressed: calculate, child: const Text('Calculate')),
            const SizedBox(height: 20),
            Text('Area: $result', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
