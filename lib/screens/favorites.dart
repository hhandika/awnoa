import 'package:awnoa/screens/shared/nav.dart';
import 'package:flutter/material.dart';

class UserFavoriteScreen extends StatefulWidget {
  const UserFavoriteScreen({super.key});

  @override
  State<UserFavoriteScreen> createState() => _UserFavoriteScreenState();
}

class _UserFavoriteScreenState extends State<UserFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Species'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Favorites'),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
