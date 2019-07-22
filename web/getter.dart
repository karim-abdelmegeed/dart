main(){
  var object=new Foo();
  //print(object.names);
  object.names="nano";
  print(object.names);

}
class Foo {
 String name;

 String get names{
 return name;
 } 
 void set names(String value ){
   if(value =="nano"){
     this.name="nano";
   }else {
     this.name="not nano";
   }
 }
}
