import 'package:awnoa/screens/shared/nav.dart';
import 'package:awnoa/services/system.dart';
import 'package:flutter/material.dart';

class AwnoaHome extends StatefulWidget {
  const AwnoaHome({super.key});

  @override
  State<AwnoaHome> createState() => _AwnoaHomeState();
}

class _AwnoaHomeState extends State<AwnoaHome> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final ScreenType screenType = getScreenType(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitles[_selectedIndex]),
          actions: _getActions(),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Center(child: pages[_selectedIndex]),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelBehavior: screenType == ScreenType.small
              ? NavigationDestinationLabelBehavior.alwaysHide
              : NavigationDestinationLabelBehavior.alwaysShow,
          indicatorColor:
              Theme.of(context).colorScheme.secondary.withAlpha(120),
          destinations: navigationProperties
              .map((NavigationProperties nav) => NavigationDestination(
                    icon: nav.icon,
                    selectedIcon: nav.selectedIcon,
                    label: nav.label,
                  ))
              .toList(),
        ));
  }

  List<Widget> _getActions() {
    if (_selectedIndex == 1 || _selectedIndex == 2) {
      return [
        IconButton(icon: const Icon(Icons.search_outlined), onPressed: () {}),
        IconButton(icon: const Icon(Icons.tune_outlined), onPressed: () {}),
      ];
    } else {
      return [];
    }
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const WelcomeContainer(),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
          child: Text(
            'Installed Packs',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.left,
          ),
        ),
        HomeScreenTiles(
          title: 'Explore Packs',
          icon: Icons.search_outlined,
          onTap: () {},
        ),
        const SizedBox(height: 16),
        HomeScreenTiles(
          title: 'FAQ',
          icon: Icons.help_outline,
          onTap: () {},
        ),
        HomeScreenTiles(
          title: 'Quick Start',
          icon: Icons.speed_outlined,
          onTap: () {},
        ),
        HomeScreenTiles(
          title: 'Documentation',
          icon: Icons.description_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Explore the species in your area,'
                ' or search for a specific species.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}

class HomeScreenTiles extends StatelessWidget {
  const HomeScreenTiles({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          tileColor:
              Theme.of(context).colorScheme.secondaryContainer.withAlpha(140),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          leading: Icon(icon, color: Theme.of(context).colorScheme.onSurface),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Icon(Icons.arrow_forward_ios,
              color: Theme.of(context).colorScheme.onSurface),
          onTap: onTap,
        ));
  }
}
