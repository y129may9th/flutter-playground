import 'package:flutter/material.dart';
import 'package:flutter_widget_key/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Ground',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        useMaterial3: true,
        primarySwatch: Colors.blue,
        fontFamily: 'LINESeedSans',
      ),
      home: const HomePage(),
    );
  }
}
