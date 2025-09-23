/// Abstraction (interface) for anything that can attack a target in the game.
///
/// The consumer (`Plant`) depends on this interface, not on any concrete
/// attacker. Different implementations (e.g., GatlingPea) can be swapped in
/// without changing the consumer logic.
abstract class Attacker {
  /// Human‑readable name of the attacker implementation (e.g., "GatlingPea").
  String get name;

  /// Perform an attack against a specific target (e.g., a zombie name).
  void attack(String target);
}
