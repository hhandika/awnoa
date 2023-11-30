import 'package:awnoa/services/types.dart';

const Map<String, String> dummyBunomysSpecies = {
  'species': 'Bunomys andrewsi',
  'englishName': 'Andrews\'s Hill Rat',
  'commonName': 'Andrews\'s Hill Rat',
};

const Map<String, String> dummyMaxomysSpecies = {
  'species': 'Maxomys bartelsii',
  'englishName': 'Bartel\'s Spiny Rat',
  'commonName': 'Bartel\'s Spiny Rat',
};

const Map<String, String> dummyBunomysSpecies2 = {
  'species': 'Bunomys chrysocomus',
  'englishName': 'Golden-bellied Hill Rat',
  'commonName': 'Golden-bellied Hill Rat',
};

const Map<String, String> dummyMaxomysSpecies2 = {
  'species': 'Maxomys baeodon',
  'englishName': 'Baeodon Spiny Rat',
  'commonName': 'Baeodon Spiny Rat',
};

const Map<String, String> dummyBunomysSpecies3 = {
  'species': 'Bunomys coelestis',
  'englishName': 'Heavenly Hill Rat',
  'commonName': 'Heavenly Hill Rat',
};

const Map<String, String> dummyMaxomysSpecies3 = {
  'species': 'Maxomys bartelsii',
  'englishName': 'Bartel\'s Spiny Rat',
  'commonName': 'Bartel\'s Spiny Rat',
};

const Map<String, String> dummyBunomysSpecies4 = {
  'species': 'Bunomys coelestis',
  'englishName': 'Celebes Hill Rat',
  'commonName': 'Celebes Hill Rat',
};

const Map<String, String> dummyMaxomysSpecies4 = {
  'species': 'Rattus norvegicus',
  'englishName': 'Norway Rat',
  'commonName': 'Norway Rat',
};

class SpeciesService {
  List<SpeciesData> getSpeciesList() {
    return [
      SpeciesData.fromMap(dummyBunomysSpecies),
      SpeciesData.fromMap(dummyMaxomysSpecies),
      SpeciesData.fromMap(dummyBunomysSpecies2),
      SpeciesData.fromMap(dummyMaxomysSpecies2),
      SpeciesData.fromMap(dummyBunomysSpecies3),
      SpeciesData.fromMap(dummyMaxomysSpecies3),
      SpeciesData.fromMap(dummyBunomysSpecies4),
      SpeciesData.fromMap(dummyMaxomysSpecies4),
    ];
  }
}
