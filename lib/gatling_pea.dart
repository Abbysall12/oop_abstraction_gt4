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

  @override
  void attack(String target) {
    print('[GatlingPea] $target takes rapid fire: $damage damage × $shotsPerSecond shots/sec!');
  }
}
