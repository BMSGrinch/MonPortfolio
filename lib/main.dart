import 'package:flutter/material.dart';
import 'package:responsive_portfolio/View/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jonathan Ouattara - Portfolio Développeur Flutter',
      debugShowCheckedModeBanner: false,
      home: DevelopperPorfolio(),
    );
  }
}
