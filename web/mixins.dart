void main(){
 var pilotedCraft=new PilotedCraft("apollo",DateTime.parse("2000-03-20"));
 print(pilotedCraft.launchYear);
 String crew=pilotedCraft.describeCrew(); 
 print(crew);
}

class Spacecraft {
  String name;
  DateTime launchDate;
  Spacecraft(this.name, this.launchDate) {
  }
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
      launchDate?.year; // read-only non-final property

  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =  DateTime.now().difference(launchDate).inDays ~/365 ;
      print('Launched: $launchYear ($years years ago)');
    }
     else {
      print('Unlaunched');
    }
  }
} 
class PilotedCraft extends Spacecraft with Piloted{
   PilotedCraft(name,launche_date):super(name,launche_date);
}
class Piloted{ //mixin
  int astronauts=50;
  String describeCrew(){
    return  "number of Astronauts is ${astronauts}";
  }

}