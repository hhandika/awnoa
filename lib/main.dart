import 'package:awnoa/screens/home.dart';
import 'package:awnoa/styles/theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AwnoaApp());
}

class AwnoaApp extends StatelessWidget {
  const AwnoaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp(
        title: 'AWNOA Species ID',
        debugShowCheckedModeBanner: false,
        theme: AwnoaTheme.lightTheme(lightColorScheme),
        darkTheme: AwnoaTheme.darkTheme(darkColorScheme),
        themeMode: ThemeMode.system,
        home: const HomeScreen(),
      );
    });
  }
}
