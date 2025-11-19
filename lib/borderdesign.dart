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
      appBar: AppBar(
        title: const Text("Custom Border TextFields"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
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

            /// Second TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: const Icon(Icons.email),
                enabledBorder: _customBorder(Colors.green),
                focusedBorder: _customBorder(Colors.teal),
              ),
            ),

            const SizedBox(height: 20),

            /// Third TextField
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
