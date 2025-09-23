import 'attacker.dart';
import 'plant.dart';
import 'gatling_pea.dart';

void main() {
  // Demo label so console output is easy to read in the report
  print('--- GatlingPea ---');

  // Constructor injection: pass a concrete Attacker (GatlingPea) into Plant
  var plant = Plant('Sunflower', GatlingPea(damage: 12, shotsPerSecond: 6));

  // The consumer method delegates to the Attacker, producing polymorphic output
  plant.defendLane('Buckethead Zombie');
}
