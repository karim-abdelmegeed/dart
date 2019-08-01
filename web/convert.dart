import "dart:async";
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

main(){

Future<dynamic> getPost()async{
  var responce = await http.get('https://jsonplaceholder.typicode.com/posts');
  return responce;
}
getPost().then((value){
  print(value.statusCode);
 // print(value.body);//print data in json 
  print(convert.jsonDecode(value.body));// convert json to map 
});


}