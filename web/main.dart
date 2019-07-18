import 'dart:io';
import 'dart:async';
/* List<int> a=[1,2,3]; //Generic data type
  List b=['b','a'];*/
main(){
 print("Enter the name of shape");
 String nameShape=stdin.readLineSync();
  if(nameShape=="square"){
      print('do you want to calculate the area or circumference of the square ?');
      String request = stdin.readLineSync();
      if(request=="area"){
        print("Enter the height of shape");
        int height =int.parse(stdin.readLineSync());
        if(height > 0){
          var squareobject = new Square(nameShape,height);
          var area= squareobject.areaSquare();
        print(area);
        }else if(height<=0) {
          print("the height must be more than zero ");
          }else{
            print ("you are entered an invalid value");
          }
       
      }else if(request=="circumference"){
        print("Enter the height of shape");
        int height =int.parse(stdin.readLineSync());
        if(height > 0){
        var squareobject = new Square(nameShape,height); 
        var circumference=squareobject.circumference();
        print(circumference);
        }else if(height<=0) {
          print("the height must be more than zero ");
          }else{
            print ("you are entered an invalid value");
          }
      }else{
         print("you are don't enter the require,plase enter the required data ");
         }
         //----------------------------------
  }else if(nameShape=="Triangle"){
    print('do you want to calculate the area or circumference of the tringle ?');
    String request = stdin.readLineSync();

    if(request=="area"){
      print("enter the height of Triangle");
      int height= int.parse(stdin.readLineSync());
      print("enter the base of Triangle");
      int base= int.parse(stdin.readLineSync());
        if(height > 0 && base > 0){
          int height2;
        var tringleobject  = new Triangle(nameShape,height,base,height2);
        var areatringle    = tringleobject.areaTriangle();
        print(areatringle);
      }else if(height<=0 || base <0) {
        print("the height must be more than zero ");
        }else{
          print ("you are entered an invalid value");
        }
    }else if(request=="circumference"){
        print("enter the first height of of Triangle");
      int height= int.parse(stdin.readLineSync());
      print("enter the second height of Triangle");
      int height2= int.parse(stdin.readLineSync());
      print("enter the base of Triangle");
      int base= int.parse(stdin.readLineSync());
      if(height > 0 && base > 0 && height2 > 0 ){
       var tringleobject  = new Triangle(nameShape,height,base,height2);
        int circumtringle    = tringleobject.circumtringle();
        print(circumtringle); 
      }else if(height<=0 || base <0 ||height2 <0) {
        print("the values must be more than zero ");
        }else{
          print ("you are entered an invalid value");
        }
    }

  }else if (nameShape=="circle"){
   print('do you want to calculate the area or circumference of the circle ?'); 
   String request = stdin.readLineSync();
   if(request=="area"){
     print("enter the radius of circle");
     int radius=int.parse(stdin.readLineSync()) ;
     var circle = new Circle(nameShape,radius);
     print(circle.areaCircle);
   } else if (request=="circumference"){
     print("enter the radius of circle");
     int radius=int.parse(stdin.readLineSync());
     var circle=new Circle(nameShape,radius);
     print (circle.circumCircle());
   }else{
      print ("you are entered an invalid value");
   }

  }else if(nameShape=="restangle"){
   print('do you want to calculate the area or circumference of the restangle ?'); 
   String request=stdin.readLineSync();
   if(request=="area"){
     print("enter the height of restangle");
     int height=int.parse(stdin.readLineSync());
     print('enter the width of restangle ');
     int width=int.parse(stdin.readLineSync());
     var restangle = new Restangle(nameShape,height,width);
     print(restangle.areaRestangle());
   }else if(request=="circumference"){
     print('enter the height of restangle ');
     int height = int.parse(stdin.readLineSync());
     print('enter the width of the restangle ');
     int width = int.parse(stdin.readLineSync());
     var restangle = new Restangle(nameShape,height,width);
     print(restangle.circumRestangle());
   }else{
      print ("you are entered an invalid value");
   }


  }else {
    print('the shape name is not available');
  }
}
////////////////// super class/////////////////
class Superclass{
    
 String nameShape="";
 int height;
 int width;
  //constractor to pass data to object of class
  Superclass(nameShape,height,width){
  this.nameShape=nameShape;
  this.height=height;
  this.width=width;


  }
}
//////////////////square supclass 1 ////////////////////////
class Square extends Superclass{
  //constractor to initialize value to proprties
  // use super to refer to perant class
  Square(nameShape,height):super(nameShape,height,height);

  int areaSquare(){
      return super.height * super.height;
  }
  int circumference(){
      return super.height * 4;
  }

}
//////////////////// tringle supclass2/////////////////
class Triangle extends Superclass{
   int height2;
   int base;
  Triangle(nameShape,height,base,height2):super(nameShape,height,null){
    this.base= base;
    this.height2=height2;
  }

  double areaTriangle(){ 
    return (this.base *super.height)/2;
  }
  int circumtringle(){
    return super.height + this.height2 + this.base;
  }
  
}

//////////////////// restangle supclass3/////////////////
 
class Restangle extends Superclass{

  Restangle(nameShape,height,width):super(nameShape,height,width);

  areaRestangle(){
    return super.height * super.width;
  }
  
  circumRestangle(){
    return (super.height + super.width) * 2 ;
  }
}

//////////////////// Circle supclass4/////////////////
class Circle extends Superclass {
  int radius ;
  final pi=3.14;
  Circle(nameShape,radius):super(nameShape,null,null){
    this.radius=radius;
  }

  circumCircle(){
  return 2 * this.pi * this.radius;
  }

  
}


 