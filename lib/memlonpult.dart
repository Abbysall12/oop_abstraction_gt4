import 'attacker.dart';		// Call upon the attacker.dart so that we can use it's tools.

// Melonpult. That's it.

// CyrusYouFngIdiot: Srry chat, no fancy complex calculations this time.
// CyrusYouFngIdiot: Too busy with doing hauswork since the storm passed.

class Melonpult implements Attacker {
	// The position of this plant's in the garden
	final String position;

	// Base damage per Melon lobbed.
	final int damage;

	// # of projectiles sent out per atk.
	final int peaCount;
	
	// Stats of the Melonpult. It's location, the amnt of dmg it deals,
	// & peaCount/projectiles launched per attack.
	Melonpult(this.position, {this.damage = 30, this.peaCount = 1});

	// Name of the Attacker.
	@override
	String get name => 'Melonpult';

	// Very simple dmg calculation from amnt of peas dished out + damage
	// In essence, base damage x # of projectile.
	int get totalDamage => damage * peaCount;


	// Implementation of the Atk method from 'attacker.dart' interface.
	@override
	void attack(String target) {
		print('[${name}] at $position: Attacking $target with MELON to the HEAD. WHOOSH!');
		print('Damage dealt: $totalDamage ($damage x $peaCount Memlon.)');
	}
}