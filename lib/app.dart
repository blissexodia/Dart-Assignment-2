import 'package:flutter/material.dart';
import 'screens/arithmetic.dart';
import 'screens/simpleinterest.dart';
import 'screens/areaofcircle.dart';
import 'screens/palindrome.dart';
import 'screens/richtextscreen.dart';
import 'screens/borderdesign.dart';
import 'screens/flutterlayoutscreen.dart';
import 'screens/columnscreen.dart';
import 'screens/containerscreen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget dashboardCard(
    BuildContext context,
    String title,
    IconData icon,
    String routeName,
  ) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.teal.withOpacity(0.3),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black, Color(0xFF1A237E), Colors.redAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(icon, color: const Color(0xFF1A237E), size: 30),
            ),
            const SizedBox(height: 14),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Dashboard'),
        elevation: 4,
        backgroundColor: const Color(0xFF1A237E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            dashboardCard(
              context,
              'Arithmetic',
              Icons.calculate,
              '/arithmetic',
            ),
            dashboardCard(
              context,
              'Simple Interest',
              Icons.money,
              '/simple_interest',
            ),
            dashboardCard(
              context,
              'Area of Circle',
              Icons.circle,
              '/area_circle',
            ),
            dashboardCard(context, 'Palindrome', Icons.sort, '/palindrome'),
            dashboardCard(
              context,
              'Rich Text',
              Icons.text_fields,
              '/rich_text',
            ),
            dashboardCard(
              context,
              'Border Design',
              Icons.border_all,
              '/border_design',
            ),
            dashboardCard(
              context,
              'Column Screen',
              Icons.view_column,
              '/column',
            ),
            dashboardCard(
              context,
              'Flutter Layout',
              Icons.dashboard_customize,
              '/flutter_layout',
            ),
          ],
        ),
      ),
    );
  }
}

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1A237E),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1A237E)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const Dashboard(),
        '/arithmetic': (_) => const ArithmeticScreen(),
        '/simple_interest': (_) => const SimpleInterestScreen(),
        '/area_circle': (_) => const AreaCircleScreen(),
        '/palindrome': (_) => const PalindromeScreen(),
        '/rich_text': (_) => const RichTextScreen(),
        '/border_design': (_) => const BorderDesignScreen(),
        '/column': (_) => const ColumnScreen(),
        '/container': (_) => const ContainerScreen(),
        '/flutter_layout': (_) => const FlutterLayoutScreen(),
      },
    );
  }
}
