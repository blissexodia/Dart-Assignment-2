import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final numController = TextEditingController();
  String result = '';

  void check() {
    final text = numController.text;
    if (text.isEmpty) return;

    final isPalindrome = text == text.split('').reversed.join();
    setState(() => result = isPalindrome ? 'Palindrome' : 'Not Palindrome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Palindrome Number'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: numController,
              decoration: const InputDecoration(labelText: 'Enter Number'),
            ),
            const SizedBox(height: 20),
            FilledButton(onPressed: check, child: const Text('Check')),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
