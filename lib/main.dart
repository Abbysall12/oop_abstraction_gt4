import 'plant.dart';
import 'peashooter.dart';

void main() {
  // Create plants with peashooters in different positions
  print('--- PeaShooter Demo ---');

  var frontGuard = Plant('Front Guard', PeaShooter('Front Lane'));
  var backGuard = Plant('Back Guard', PeaShooter('Back Lane'));

  // Demonstrate basic defense
  frontGuard.defendLane('Basic Zombie');

  // Demonstrate special action
  backGuard.specialAction('Cone Head Zombie');
}
