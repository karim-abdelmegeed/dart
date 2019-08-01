main(){
/*  var names = {'name1':"bayan",'name2':'nano',"name3":"lelo"};
  names.forEach((keys,value){
   
    print(value);
  });*/
 var names2 =new Map();
  names2["nam"]="bano";
  names2["nam2"]="lolo";
  names2["nam3"]="roro";
  print(names2);
  names2.remove('nam3');// use nameMape.remove('keyName') to remove the selected key with it value of map
 /* names2.clear();// use nameMape.clear()to clear the map of all keys and values and it length will be zero
  print(names2.length);*/
  // names2.addAll({'nam3':20,"nam4":200 });

  names2.forEach((key,value){
    print("${key} = ${value}");
  });

  
}