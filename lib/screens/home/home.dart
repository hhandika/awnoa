import 'package:awnoa/screens/home/components/packs.dart';
import 'package:awnoa/screens/home/components/welcome.dart';
import 'package:awnoa/screens/shared/components.dart';
import 'package:awnoa/screens/shared/navigation.dart';
import 'package:awnoa/services/packs.dart';
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
            padding: const EdgeInsets.fromLTRB(16, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Packs',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View all'),
                ),
              ],
            ),
          ),
          const Packs(
            packs: dummyPackList,
          ),
          MainSharedTiles(
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
            title: 'Contribute',
            icon: Icons.people_outline,
            onTap: () {},
          ),
          SharedTiles(
            title: 'Donate',
            icon: Icons.attach_money_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class Packs extends StatelessWidget {
  const Packs({super.key, required this.packs});

  final List<GuidePacks> packs;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SizedBox(
          height: 168,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: packs.length,
            itemBuilder: (context, index) {
              return PackContainer(isSelected: index == 0, pack: packs[index]);
            },
          ),
        ));
  }
}
