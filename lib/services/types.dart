class SpeciesData {
  SpeciesData({
    required this.species,
    required this.englishName,
    required this.commonName,
  });
  final String species;
  final String englishName;
  final String commonName;

  factory SpeciesData.fromJson(Map<String, dynamic> json) {
    return SpeciesData(
      species: json['species'] as String,
      englishName: json['englishName'] as String,
      commonName: json['commonName'] as String,
    );
  }

  factory SpeciesData.fromMap(Map<String, String> data) {
    return SpeciesData(
      species: data['species']!,
      englishName: data['englishName']!,
      commonName: data['commonName']!,
    );
  }
}
