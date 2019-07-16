import 'dart:io';
import 'dart:async';
/* List<int> a=[1,2,3]; //Generic data type
  List b=['b','a'];*/
main(){
 print("Enter the name of shape");
 String nameShape=stdin.readLineSync();
  print("Enter the height of shape");
 int height = stdin.readByteSync() ;
 var squareobject = new Square(nameShape,height);
 var area= squareobject.areaSquare();
  print(area);
 var tringleobject  = new Triangle("tringle",5,5);
   var areatringle    = tringleobject.areaTriangle();
  print(areatringle);
}

class Superclass{
    
 String nameShape="";
 int height;
 int base;
 int width;
 
 
Superclass(nameShape,height,base,width){
 this.nameShape=nameShape;
 this.height=height;
 this.base=base;
}

}
class Square extends Superclass{
  Square(nameShape,height):super(nameShape,height,height,null);



int areaSquare(){
    return super.height * super.height;
}


}
class Triangle extends Superclass{
  Triangle(nameShape,height,base):super(nameShape,height,base,null);


double areaTriangle(){ 
  return (super.base *super.height)/2;
}
  


  
}