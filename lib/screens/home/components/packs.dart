import 'package:awnoa/services/packs.dart';
import 'package:flutter/material.dart';

class PackContainer extends StatelessWidget {
  const PackContainer({
    super.key,
    required this.pack,
    required this.isSelected,
  });

  final GuidePacks pack;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 16, 4),
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
          width: 240,
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
            border: Border.all(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: 2,
            ),
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
                pack.name,
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                pack.description,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
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
