import 'dart:io';
//Reading a file as text
Future main() async{
  var config= File('config.text');
  var contents ;
  //pull the whole file in the single string 
  contents= await config.readAsString();
  print('the file is ${contents.length} character long');
   print('the content of file is: ${contents}');

  // Put each line of the file into its own string.
  contents= await config.readAsLines();
  print('the file is ${contents.length} lines long');
}