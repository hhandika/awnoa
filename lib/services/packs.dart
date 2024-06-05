const dummyPackList = [
  GuidePacks(
    uuid: '1',
    name: 'Mammals of Sumatra',
    description: 'A field guide to the mammals of Sumatra',
  ),
  GuidePacks(
    uuid: '2',
    name: 'Mammals of Borneo',
    description: 'A field guide to the mammals of Borneo',
  ),
  GuidePacks(
    uuid: '3',
    name: 'Mammals of Java',
    description: 'A field guide to the mammals of Java',
  ),
  GuidePacks(
    uuid: '4',
    name: 'Mammals of Sulawesi',
    description: 'A field guide to the mammals of Sulawesi',
  ),
  GuidePacks(
    uuid: '5',
    name: 'Mammals of Papua',
    description: 'A field guide to the mammals of Papua',
  )
];

class GuidePacks {
  const GuidePacks({
    required this.uuid,
    required this.name,
    required this.description,
  });

  final String uuid;
  final String name;
  final String description;
}
