import 'attacker.dart';

/// Basic PeaShooter class that implements the Attacker interface
class PeaShooter implements Attacker {
  /// The position of this peashooter in the garden
  final String position;

  /// Base damage per pea
  final int damage;

  /// Number of peas shot per attack
  final int peaCount;

  /// Creates a new PeaShooter at the specified position
  /// [damage] defaults to 5 damage per pea
  /// [peaCount] defaults to 2 peas per attack
  PeaShooter(this.position, {this.damage = 5, this.peaCount = 2});

  /// Name of this attacker type
  @override
  String get name => 'PeaShooter';

  /// Calculate total damage from all peas
  int get totalDamage => damage * peaCount;

  /// Implementation of the attack method from Attacker interface
  @override
  void attack(String target) {
    print('[${name}] at $position: Attacking $target with peas! *pew* *pew*');
    print('Damage dealt: $totalDamage ($damage × $peaCount peas)');
  }
}
