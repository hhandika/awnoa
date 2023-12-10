import 'package:awnoa/screens/shared/nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AWNOA Species ID'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Field guide for the mammals of Indonesia'),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
