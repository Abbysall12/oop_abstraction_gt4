//import attacker.dart
import 'attacker.dart';

//create a class called 'plant'
class Plant {
  final String name;
  Attacker attacker;

  //constructor
  Plant(this.name, this.attacker);

  //methods
  //this method calls the attacker class
  void defendLane(String target) {
    print('$name defends the lane using ${attacker.name} against $target');
    attacker.attack(target);
  }

  //same here
  void specialAction(String target) {
    print('$name triggers special action with ${attacker.name} on $target');
    attacker.attack(target);
  }

  //A setter to set an attacker(a zombie)
  void setAttacker(Attacker newAttacker) {
    attacker = newAttacker;
  }
}
