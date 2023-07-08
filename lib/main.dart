import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_key/home.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
