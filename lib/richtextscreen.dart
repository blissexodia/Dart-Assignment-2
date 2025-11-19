import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rich Text Example')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: [
              TextSpan(
                text: 'H',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // "ello" bold but not red
              TextSpan(
                text: 'ello ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              // "world" normal text
              TextSpan(text: 'world'),
            ],
          ),
        ),
      ),
    );
  }
}
