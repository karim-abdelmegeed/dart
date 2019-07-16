import 'dart:io';
import 'dart:convert';
Future main ()async{
  var config =  File('http://localhost:8080/config.text');
  Stream<List<int>>  inputStream=config.openRead();
 var  lines = utf8.decoder.bind(inputStream).transform( LineSplitter());
  try{
await for (var line in lines) {
      print('Got ${line.length} characters from stream');
    }   
  }catch(e){
    print(e);
  }
}
