import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SnackbarDemoApp());
}

class SnackbarDemoApp extends StatelessWidget {
  const SnackbarDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}