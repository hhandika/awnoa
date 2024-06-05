import 'package:flutter/material.dart';

class MainSharedTiles extends StatelessWidget {
  const MainSharedTiles({
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
              Theme.of(context).colorScheme.primaryContainer.withAlpha(180),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Theme.of(context)
                  .colorScheme
                  .secondaryContainer
                  .withAlpha(60),
              width: 1,
            ),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.onSurface,
          ),
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
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.onSurface,
          ),
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
