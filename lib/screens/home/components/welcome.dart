import 'package:awnoa/services/packs.dart';
import 'package:flutter/material.dart';

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
              border: Border.all(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                width: 2,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Welcome, ',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Icon(
                    Icons.insights_outlined,
                    size: 56,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Packs',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      dummyPackList.length.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Species',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '592',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
