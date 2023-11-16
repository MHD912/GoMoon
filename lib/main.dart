import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoMoon',
      theme: ThemeData(colorScheme: const ColorScheme.dark()),
      home: HomePage(),
    );
  }
}
