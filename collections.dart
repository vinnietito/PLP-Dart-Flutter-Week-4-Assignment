void demonstrateCollections() {
  // List
  List<String> list = ['Dart', 'Flutter', 'Programming'];
  list.add('OpenAI');
  list.remove('Programming');
  print("List: $list");

  // Set
  Set<String> set = {'Dart', 'Flutter'};
  set.add('Programming');
  set.add('Dart'); // Duplicate won't be added
  print("Set: $set");

  // Map
  Map<String, String> map = {'language': 'Dart', 'framework': 'Flutter'};
  map['IDE'] = 'Visual Studio Code';
  map.remove('framework');
  print("Map: $map");
}

void main() {
  // Calling the demonstrateCollections function
  demonstrateCollections();
}
