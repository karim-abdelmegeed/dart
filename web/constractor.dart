main(){
      var object = new Superclass("hala",21);
    print(object.name);
    print(object.age);
   var object2 = new SupClass("mohammed");
   print(object2.name);
}
class Superclass{
  String name ;
  int age=22;
  Superclass( name,age){
    this.name=name;
    this.age= age;
   }
   //Superclass(this.name,this.age);
}

class SupClass extends Superclass {
String job;
SupClass(name):super(name,null){

}

}