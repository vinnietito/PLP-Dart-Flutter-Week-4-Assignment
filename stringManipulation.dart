import 'dart:io'; //Import the dart:io library to read user input

String reverseString(String input) {
  return input.split('').reversed.join('');
}

void stringManipulation(String input) {
  print("Original Name: $input");
  print("Concatenated: ${input + ' is learning Dart!'}");
}