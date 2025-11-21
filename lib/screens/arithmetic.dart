import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController firstController = TextEditingController(
    text: '1',
  );
  final TextEditingController secondController = TextEditingController(
    text: '2',
  );
  int result = 0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  void _computeSum() {
    if (!_formKey.currentState!.validate()) return;

    final int? a = int.tryParse(firstController.text.trim());
    final int? b = int.tryParse(secondController.text.trim());
    if (a == null || b == null) return;

    setState(() => result = a + b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Arithmetic'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'First number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty)
                    return 'Please enter first number';
                  if (int.tryParse(value.trim()) == null)
                    return 'Enter a valid integer';
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: secondController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'Second number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty)
                    return 'Please enter second number';
                  if (int.tryParse(value.trim()) == null)
                    return 'Enter a valid integer';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _computeSum,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('SUM', style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text('Result: $result', style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
