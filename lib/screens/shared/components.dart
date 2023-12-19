import 'package:flutter/material.dart';

class SharedTiles extends StatelessWidget {
  const SharedTiles({
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
              Theme.of(context).colorScheme.secondaryContainer.withAlpha(120),
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

class SharedDivider extends StatelessWidget {
  const SharedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 16,
      endIndent: 16,
    );
  }
}
