import 'package:awnoa/services/types.dart';
import 'package:flutter/material.dart';

class SpeciesListView extends StatelessWidget {
  const SpeciesListView({
    super.key,
    required this.speciesList,
  });

  final List<SpeciesData> speciesList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: speciesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8, 0.0, 8, 4.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                side: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withAlpha(60),
                  width: 2,
                )),
            tileColor:
                Theme.of(context).colorScheme.secondaryContainer.withAlpha(100),
            leading: const Icon(Icons.image_outlined),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            title: Text(speciesList[index].species,
                style: Theme.of(context).textTheme.titleMedium),
            subtitle: Text(speciesList[index].commonName),
            onTap: () {},
          ),
        );
      },
    );
  }
}
