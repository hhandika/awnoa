import 'package:awnoa/providers/nav.dart';
import 'package:awnoa/screens/explore.dart';
import 'package:awnoa/screens/favorites.dart';
import 'package:awnoa/screens/home.dart';
import 'package:awnoa/screens/more_options.dart';
import 'package:awnoa/services/system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppNavigation extends ConsumerStatefulWidget {
  const AppNavigation({super.key});

  @override
  AppNavigationState createState() => AppNavigationState();
}

class AppNavigationState extends ConsumerState<AppNavigation> {
  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = getScreenType(context) == ScreenType.small;
    return NavigationBar(
      selectedIndex: ref.watch(navigationProvider),
      indicatorColor: Theme.of(context).colorScheme.secondary.withAlpha(100),
      labelBehavior: isSmallScreen
          ? NavigationDestinationLabelBehavior.alwaysHide
          : NavigationDestinationLabelBehavior.alwaysShow,
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
        _onItemTapped(index);
      },
    );
  }

  void _onItemTapped(int index) {
    ref.read(navigationProvider.notifier).updateNavigation(index);
    setState(() {
      switch (index) {
        case 0:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
          break;
        case 1:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ExploreScreen()));
          break;
        case 2:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const UserFavoriteScreen()));
          break;
        case 3:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MoreScreen()));
          break;
      }
    });
  }
}
