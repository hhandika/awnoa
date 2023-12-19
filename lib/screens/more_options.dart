import 'package:awnoa/screens/shared/components.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          SharedTiles(
            title: 'Manage packs',
            icon: Icons.inventory_2_outlined,
            onTap: () {},
          ),
          SharedTiles(
            title: 'Export species list',
            icon: Icons.adaptive.share_outlined,
            onTap: () {},
          ),
          const HeadingText(text: 'Settings'),
          SharedTiles(
            title: 'Appearance',
            icon: Icons.settings,
            onTap: () {},
          ),
          const SizedBox(height: 8),
          const SharedDivider(),
          const SizedBox(height: 8),
          SharedTiles(
            title: 'Citations',
            icon: Icons.format_quote_outlined,
            onTap: () {},
          ),
          SharedTiles(
            title: 'Help',
            icon: Icons.help_outline,
            onTap: () {},
          ),
          SharedTiles(
            title: 'About',
            icon: Icons.info_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 2),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
