import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AWNOA Species ID'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isListView = !isListView;
                });
              },
              icon: isListView
                  ? const Icon(Icons.list_alt_rounded)
                  : const Icon(Icons.grid_view_rounded),
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: const Center(
          child: Text('Field guide for the mammals of Indonesia'),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home_rounded),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.search_rounded),
              icon: Icon(Icons.search_outlined),
              label: 'Explore',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.favorite_rounded),
              icon: Icon(Icons.favorite_outline),
              label: 'Favorites',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.menu_rounded),
              icon: Icon(Icons.menu_outlined),
              label: 'More',
            ),
          ],
          onDestinationSelected: (index) {
            setState(() {
              switch (index) {
                case 0:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  break;
                case 1:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  break;
                case 2:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  break;
                case 3:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  break;
                case 4:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  break;
              }
            });
          },
        ));
  }
}
