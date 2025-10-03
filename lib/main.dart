import 'memlonpult.dart';
import 'plant.dart';
import 'peashooter.dart';
import 'gatling_pea.dart';

void main() {
  // Create plants with different peashooter configurations + Melonpult in the middle for some reason???
  print('--- PeaShooter Demo ---');
  var frontGuard = Plant(
    'Front Guard',
    PeaShooter('Front Lane'),
  ); // Default: 5 damage × 2 peas
  var midGuard = Plant(
    'Mid Guard',
    Melonpult('Mid Lane')
  );
  var backGuard = Plant(
    'Back Guard',
    PeaShooter('Back Lane', damage: 8, peaCount: 3),
  ); // Enhanced: 8 damage × 3 peas

  // Demonstrate basic defense with PeaShooter w/ Melonnpult
  frontGuard.defendLane('Basic Zombie');
  midGuard.defendLane('Buckethead Zombie');
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
