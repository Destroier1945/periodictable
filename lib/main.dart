import 'package:flutter/material.dart';
import 'package:periodictable/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabela Periodica',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
