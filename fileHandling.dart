import 'dart:io';

void fileHandling() async {
  try {
    //Writing to a file
   File writeFile = File('output.txt');
   await writeFile.writeAsString('Dart File Handling Example\n');
  }
}