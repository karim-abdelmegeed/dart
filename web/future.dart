import 'dart:async';
import "dart:io";

main(){
String name=stdin.readLineSync();

Future<String> getData(name)async{
  return await name;
}

getData(name).then((value){
print("the value is $value");
});

print("hello");

}