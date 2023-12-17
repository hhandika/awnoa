import 'package:awnoa/screens/shared/nav.dart';
import 'package:awnoa/services/species_list.dart';
import 'package:awnoa/services/types.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isListView = !isListView;
              });
            },
            icon: isListView
                ? const Icon(Icons.grid_view_rounded)
                : const Icon(Icons.list_alt_rounded),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          child: isListView
              ? SpeciesListView(speciesList: fetchList())
              : SpeciesGridView(speciesList: fetchList()),
        ),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }

  List<SpeciesData> fetchList() {
    return SpeciesService().getSpeciesList();
  }
}

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
        return ListTile(
          // leading: Image.network(speciesList[index].imageUrl),
          title: Text(speciesList[index].species,
              style: Theme.of(context).textTheme.titleMedium),
          subtitle: Text(speciesList[index].commonName),
        );
      },
    );
  }
}

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
