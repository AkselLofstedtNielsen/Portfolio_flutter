import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Aksel Löfstedt Nielsen',
      home: const HomePage(),
    );
  }
}
