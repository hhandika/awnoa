import 'package:awnoa/screens/explore.dart';
import 'package:awnoa/screens/favorites.dart';
import 'package:awnoa/screens/home.dart';
import 'package:awnoa/screens/more_options.dart';
import 'package:flutter/material.dart';

const List<Widget> pages = <Widget>[
  HomeScreen(),
  ExploreScreen(),
  UserFavoriteScreen(),
  MoreScreen(),
];

const List<String> pageTitles = <String>[
  'AWNOA Species ID',
  'Explore',
  'Favorites',
  'More',
];

class NavigationProperties {
  const NavigationProperties({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String label;
  final Icon icon;
  final Icon selectedIcon;
}

const List<NavigationProperties> navigationProperties = <NavigationProperties>[
  NavigationProperties(
    label: 'Home',
    icon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home_rounded),
  ),
  NavigationProperties(
    label: 'Explore',
    icon: Icon(Icons.search_outlined),
    selectedIcon: Icon(Icons.search_rounded),
  ),
  NavigationProperties(
    label: 'Favorites',
    icon: Icon(Icons.favorite_outline),
    selectedIcon: Icon(Icons.favorite_rounded),
  ),
  NavigationProperties(
    label: 'More',
    icon: Icon(Icons.menu_outlined),
    selectedIcon: Icon(Icons.menu_rounded),
  ),
];
