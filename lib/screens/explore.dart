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
        title: const Text('AWNOA Species ID'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isListView = !isListView;
              });
            },
            icon: isListView
                ? const Icon(Icons.list_alt_rounded)
                : const Icon(Icons.grid_view_rounded),
          ),
        ],
      ),
      body: Center(
        child: isListView
            ? SpeciesListView(speciesList: fetchList())
            : SpeciesGridView(speciesList: fetchList()),
      ),
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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text(speciesList[index].species,
                style: Theme.of(context).textTheme.titleMedium),
            subtitle: Text(speciesList[index].commonName),
          ),
          child: const Text('No image'),
        );
      },
    );
  }
}
