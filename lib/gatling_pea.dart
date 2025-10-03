import 'attacker.dart';

// Concrete attacker implementation: GatlingPea rapidly fires multiple peas.
//
// This class implements the `Attacker` interface and defines its own behavior
// for `attack`. Because `Plant` only depends on `Attacker`, we can plug this
// in without modifying `Plant`.
class GatlingPea implements Attacker {
  // Damage dealt per shot.
  final int damage;

  // Number of shots fired per second (for display/demo purposes).
  final int shotsPerSecond;

  GatlingPea({this.damage = 15, this.shotsPerSecond = 4});

  @override
  String get name => 'GatlingPea';

   /// Calculate total damage from all peas
  int get totalDamage => damage * shotsPerSecond;

  @override
  void attack(String target) {
    print('[Gatling Pea]');
    print('Damage dealt: $totalDamage ($damage × $shotsPerSecond peas)');
  }
}
