import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(title: const Text('Column Screen'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.star, size: 50, color: Color(0xFF1A237E)),
            SizedBox(height: 12),
            Icon(Icons.star, size: 100, color: Color(0xFF3949AB)),
            SizedBox(height: 12),
            Icon(Icons.star, size: 50, color: Color(0xFF1A237E)),
          ],
        ),
      ),
    );
  }
}
