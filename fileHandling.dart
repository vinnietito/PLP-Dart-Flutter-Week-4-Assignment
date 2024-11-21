import 'dart:io';

void fileHandling() async {
  try {
    //Writing to a file
   File writeFile = File('output.txt');
   await writeFile.writeAsString('Dart File Handling Example\n');

   //Reading from a file
   File readFile = File('output.txt');
   string content = await readFile.readAsString();
   print("File Content: $content");
  }
}