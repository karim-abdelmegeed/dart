import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
main(){
  Map post = new Map();
  Future<dynamic> getPost()async{
   var responce = await http.get('https://jsonplaceholder.typicode.com/posts/1');
   if( responce.statusCode == 200){
     var data =convert.jsonDecode(responce.body);
     post.addAll(data);
     print(post);
   }
    
  }
  
  getPost();
  print('plase wait from download ');
  
  print("hello from web");
}