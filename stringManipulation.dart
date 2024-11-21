import 'dart:io'; //Import the dart:io library to read user input

String reverseString(String input) {
  return input.split('').reversed.join('');
}

void stringManipulation(String input) {
  print("Original Name: $input");
  print("Concatenated: ${input + ' is learning Dart!'}");
  print("Interpolated: 'Hello, $input! Welcome to the world of programming!'");
  print("Substring(0-3): ${input.substring(0, 3)}");
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");
  print("Reversed: ${reverseString(input)}");
  print("Length: ${input.length}");
}

void main(){
  //Requesting user input for their name
  print("Please enter your name: ");
  String input = stdin.readLineSync() ?? ""; //Reads input from the user, 

  //Calling the stringManipulationfunction with the input string
  stringManipulation(input);
}