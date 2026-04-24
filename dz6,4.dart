enum WeaponType { sword, spear, bow }

class Weapon {
  final WeaponType type;
  final int bonusDamage;

  Weapon({required this.type, required this.bonusDamage});

  @override
  String toString() => '${type.name} (+$bonusDamage урона)';
}