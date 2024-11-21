String reverseString(String input) {
  return input.split('').reversed.join('');
}

void stringManipulation(String input) {
  print("Original String: $input");
  print("Concatenated: ${input + ' Dart is awesome!'}");
  print("Interpolated: 'Welcome to $input programming!'");
  print("Substring (0-4): ${input.substring(0, 4)}");
}