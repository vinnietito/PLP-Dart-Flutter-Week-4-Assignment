import 'dart:io';

String reverseString(String input) {
  return input.split('').reversed.join('');
}

void stringManipulation(String input) {
  print("Original String: $input");
  print("Concatenated: ${input + ' Dart is awesome!'}");
  print("Interpolated: 'Welcome to $input programming!'");
  print("Substring (0-7): ${input.substring(0, 7)}");
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");
  print("Reversed: ${reverseString(input)}");
  print("Length: ${input.length}");
}

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

void dateAndTime() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting DateTime
  String formatted = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";
  print("Formatted DateTime: $formatted");

  // Parsing DateTime
  DateTime parsed = DateTime.parse("2024-12-25");
  print("Parsed Date: $parsed");

  // Date Manipulation
  DateTime future = now.add(Duration(days: 5));
  DateTime past = now.subtract(Duration(days: 10));
  print("5 Days Later: $future");
  print("10 Days Earlier: $past");

  // Difference between dates
  Duration difference = future.difference(past);
  print("Difference in Days: ${difference.inDays}");
}

Future<void> fileHandling() async {
  try {
    // Writing to a file
    File writeFile = File('output.txt');
    await writeFile.writeAsString('Dart File Handling Example\n');

    // Reading from a file
    File readFile = File('output.txt');
    String content = await readFile.readAsString();
    print("File Content: $content");
  } catch (e) {
    print("Error during file operation: $e");
  }
}

void main() async {
  // Step 1: String Manipulation
  String input = "Dart Programming";
  stringManipulation(input);

  // Step 2: Store results in a collection
  List<String> results = [];
  results.add("Original: $input");
  results.add("Reversed: ${reverseString(input)}");
  results.add("Length: ${input.length}");

  // Step 3: Save to file with timestamp
  DateTime timestamp = DateTime.now();
  File logFile = File('log.txt');
  await logFile.writeAsString(
      "Log Entry: $timestamp\nResults: ${results.join(', ')}\n",
      mode: FileMode.append);

  // Step 4: Demonstrate Collections
  demonstrateCollections();

  // Step 5: Date and Time Operations
  dateAndTime();

  // Step 6: File Handling
  await fileHandling();

  print("Application completed successfully!");
}
