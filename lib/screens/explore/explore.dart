import 'package:awnoa/screens/explore/components/grid.dart';
import 'package:awnoa/screens/explore/components/list.dart';
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
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
