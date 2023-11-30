import 'package:awnoa/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AwnoaApp());
}

class AwnoaApp extends StatelessWidget {
  const AwnoaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWNOA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
