import 'dart:io';

String reverseString(String input) {
  return input.split(' ').reversed.join('');
}

void stringManipulation(String input) {
  print("Original String: $input");
  print("Concatenated: ${input + ' Dart is awesome!'}");
  print("Interporated: 'Welcome to $input programming!'");
  print("Substring (0-7): ${input.substring(0, 7)}");
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");
  print("Reversed: ${reverseString(input)}");
  print("Length: ${input.length}");
}

void demonstrateCollections() {
  //List
  List<String> list = ['Dart', 'Flutter', 'Programming'];
  list.add('OpenAI');
  list.remove('Programming');
  print("List: $list");

  //Set
  Set<String> set = {'Dart', 'Flutter'};
  set.add('Programming');
}