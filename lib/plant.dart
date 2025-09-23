import 'attacker.dart';

/// Consumer class that depends only on the `Attacker` abstraction.
///
/// A `Plant` can defend a lane or perform special actions by delegating to
/// whatever `Attacker` it currently holds. The concrete attacker (e.g.,
/// `GatlingPea`) is provided from the outside (constructor injection), so the
/// `Plant` does not need to know implementation details.
class Plant {
  /// Display name of the plant instance shown in the console.
  final String name;

  /// The injected dependency. Any class implementing `Attacker` is valid.
  Attacker attacker;

  /// Constructor injection: we receive an `Attacker` implementation here.
  Plant(this.name, this.attacker);

  /// Simulates the plant defending its lane by using the current attacker.
  void defendLane(String target) {
    print('$name defends the lane using ${attacker.name} against $target');
    attacker.attack(target);
  }

  /// Another consumer method to show the same dependency in a different flow.
  void specialAction(String target) {
    print('$name triggers special action with ${attacker.name} on $target');
    attacker.attack(target);
  }

  /// Allows swapping the attacker at runtime without changing `Plant` logic.
  void setAttacker(Attacker newAttacker) {
    attacker = newAttacker;
  }
}
