import 'package:flutter/material.dart';

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
