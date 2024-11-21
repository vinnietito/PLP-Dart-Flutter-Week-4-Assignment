
String reverseString(String input) {
  return input.split('').reversed.join('');
}

void stringManipulation(String input) {
  print("Original String: $input");
  print("Concatenated: ${input + ' Dart is awesome!'}");
  print("Interpolated: 'Welcome to $input programming!'");
  print("Substring (0-4): ${input.substring(0, 4)}");
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");
  print("Reversed: ${reverseString(input)}");
  print("Length: ${input.length}");
}

void main() {
  // Input string to manipulate
  String input = "Dart";

  // Calling the stringManipulation function with the input string
  stringManipulation(input);
}