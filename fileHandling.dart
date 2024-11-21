import 'dart:io';

void fileHandling() async {
  try {
    //Writing to a file
   File writeFile = File('output.txt');
   await writeFile.writeAsString('Dart File Handling Example\n');

   //Reading from a file
   File readFile = File('Questions.txt');
   String content = await readFile.readAsString();
   print("File Content: $content");
  } catch (e) {
    print("Error during file operation: $e");
  }
}

void main(){
  //Calling the fileHandling function
  fileHandling();
}