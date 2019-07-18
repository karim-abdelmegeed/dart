main(){
      var object = new Superclass("hala",21);
    print(object.name);
    print(object.age);
    var object2= new SupClass("mohamed","devoleper");
    print(object2.name + " : "  object2.job);

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
SupClass(name,job):super(name,null){
this.job=job;

}


}