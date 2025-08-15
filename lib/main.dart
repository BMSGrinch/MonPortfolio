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
      title: 'Portofolio Tuto',
      debugShowCheckedModeBanner: false,
      home: DevelopperPorfolio(),
    );
  }
}
