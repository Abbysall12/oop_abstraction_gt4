import 'attacker.dart';

// Basic PeaShooter class that implements the Attacker interface
class PeaShooter implements Attacker {
  // The position of this peashooter in the garden
  final String position;

  // Constructor to set the peashooter's position
  PeaShooter(this.position);

  // Implementation of the attack method from Attacker interface
  @override
  void attack(String target) {
    print(
      '[PeaShooter] at $position: Attacking $target with peas! *pew* *pew*',
    );
  }
}
