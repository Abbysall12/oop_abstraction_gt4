import 'plant.dart';
import 'peashooter.dart';
import 'gatling_pea.dart';

void main() {
  // Create plants with peashooters in different positions
  print('--- PeaShooter Demo ---');
  var frontGuard = Plant('Front Guard', PeaShooter('Front Lane'));
  var backGuard = Plant('Back Guard', PeaShooter('Back Lane'));

  // Demonstrate basic defense with PeaShooter
  frontGuard.defendLane('Basic Zombie');
  backGuard.specialAction('Cone Head Zombie');

  // GatlingPea demonstration
  print('\n--- GatlingPea Demo ---');
  var gatlingPlant = Plant(
    'Heavy Gunner',
    GatlingPea(damage: 12, shotsPerSecond: 6),
  );
  gatlingPlant.defendLane('Buckethead Zombie');

  // Demonstrate swapping attackers
  print('\n--- Swap Attacker Demo ---');
  frontGuard.setAttacker(GatlingPea(damage: 15, shotsPerSecond: 8));
  frontGuard.specialAction('Gargantuar');
}
