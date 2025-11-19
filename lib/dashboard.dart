import 'package:flutter/material.dart';
import 'arithmetic.dart';
import 'simpleinterest.dart';
import 'areaofcircle.dart';
import 'palindrome.dart';
import 'richtextscreen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget button(BuildContext context, String text, Widget page) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            button(context, 'Arithmetic', const ArithmeticScreen()),
            button(context, 'Simple Interest', const SimpleInterestScreen()),
            button(context, 'Area of Circle', const AreaCircleScreen()),
            button(context, 'Palindrome Number', const PalindromeScreen()),
            button(context, 'Rich Text Example', const RichTextScreen()),
          ],
        ),
      ),
    );
  }
}
