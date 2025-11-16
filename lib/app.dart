import 'package:flutter/material.dart';
import '/dashboard.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 145, 26, 230),
      ),
      home: const Dashboard(),
    );
  }
}
