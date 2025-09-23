import 'attacker.dart';

class Plant {
  final Attacker attacker;

  Plant(this.attacker);

  void defendLane(String target) {
    print('\nDefending lane against $target:');
    attacker.attack(target);
  }

  void specialAttack(String target) {
    print('\nPerforming special attack on $target:');
    attacker.attack(target);
  }
}
