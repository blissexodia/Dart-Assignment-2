import 'package:flutter/material.dart';

class BorderDesignScreen extends StatelessWidget {
  const BorderDesignScreen({super.key});

  OutlineInputBorder _customBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("Custom Border TextFields"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                enabledBorder: _customBorder(Colors.grey),
                focusedBorder: _customBorder(Colors.blue),
                errorBorder: _customBorder(Colors.red),
                focusedErrorBorder: _customBorder(Colors.redAccent),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: const Icon(Icons.email),
                enabledBorder: _customBorder(Colors.green),
                focusedBorder: _customBorder(Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
                enabledBorder: _customBorder(Colors.purple),
                focusedBorder: _customBorder(Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
