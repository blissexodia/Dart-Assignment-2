import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Rich Text Example'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: [
              TextSpan(
                text: 'H',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'ello ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'world'),
            ],
          ),
        ),
      ),
    );
  }
}
