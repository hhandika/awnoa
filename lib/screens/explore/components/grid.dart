import 'package:awnoa/services/types.dart';
import 'package:flutter/material.dart';

class SpeciesGridView extends StatelessWidget {
  const SpeciesGridView({
    super.key,
    required this.speciesList,
  });

  final List<SpeciesData> speciesList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: speciesList.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return GridTile(
            footer: GridTileBar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              title: Text(speciesList[index].species,
                  style: Theme.of(context).textTheme.titleMedium),
              subtitle: Text(speciesList[index].commonName),
            ),
            child: const Center(
              child: Text('Image'),
            ));
      },
    );
  }
}
