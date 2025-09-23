//import needed files
import 'plant.dart';
import 'peashooter.dart';

void main() {
  // Create plants with peashooters in different positions
  var frontLanePlant = Plant(PeaShooter('Front Lane'));
  var midLanePlant = Plant(PeaShooter('Mid Lane'));

  // Demonstrate basic defense
  print('=== Front Lane Defense ===');
  frontLanePlant.defendLane('Basic Zombie');

  // Demonstrate special attack
  print('\n=== Mid Lane Attack ===');
  midLanePlant.specialAttack('Cone Head Zombie');
}
