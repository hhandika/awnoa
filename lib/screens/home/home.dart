import 'package:awnoa/screens/shared/components.dart';
import 'package:awnoa/screens/shared/navigation.dart';
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
        bottomNavigationBar: AwnoaNavbar(
          selectedIndex: _selectedIndex,
          onNavigationSelected: (index) =>
              setState(() => _selectedIndex = index),
          screenType: screenType,
        ));
  }

  List<Widget> _getActions() {
    if (_selectedIndex == 1 || _selectedIndex == 2) {
      return [
        IconButton(icon: const Icon(Icons.search_outlined), onPressed: () {}),
        IconButton(
            icon: Icon(Icons.adaptive.more_outlined),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                showDragHandle: true,
                builder: (BuildContext context) {
                  return SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.list_alt_outlined),
                              title: const Text('List View'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.grid_view_outlined),
                              title: const Text('Grid View'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ));
                },
              );
            }),
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
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: ListView(
        shrinkWrap: true,
        children: [
          const WelcomeContainer(),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Packs',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Icon(Icons.arrow_forward_ios,
                      color: Theme.of(context).colorScheme.onSurface),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: SizedBox(
                height: 168,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return PackContainer(isSelected: index == 0);
                  },
                ),
              )),
          SharedTiles(
            title: 'Explore Packs',
            icon: Icons.search_outlined,
            onTap: () {},
          ),
          const SizedBox(height: 16),
          SharedTiles(
            title: 'FAQ',
            icon: Icons.help_outline,
            onTap: () {},
          ),
          SharedTiles(
            title: 'Contributing',
            icon: Icons.people_outline,
            onTap: () {},
          ),
          SharedTiles(
            title: 'Donate now!',
            icon: Icons.attach_money_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.tertiaryContainer,
                Theme.of(context).colorScheme.secondaryContainer,
              ],
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'This is the home screen.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ));
  }
}

class PackContainer extends StatelessWidget {
  const PackContainer({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 16, 4),
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.secondaryContainer,
              ],
            ),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.pest_control_rodent_outlined,
                size: 40,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              const SizedBox(height: 4),
              Text(
                'Pack Name',
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.fade,
              ),
              const SizedBox(height: 4),
              Text(
                'Pack Description',
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.fade,
              ),
              const SizedBox(height: 4),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  isSelected
                      ? Icons.check_circle_rounded
                      : Icons.circle_outlined,
                ),
              ),
            ],
          ),
        ));
  }
}
