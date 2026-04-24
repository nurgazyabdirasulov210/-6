import 'dz6.dart';
import 'dz6,1.dart';
import 'dz6,2.dart';
import 'dz6,4.dart';

void main() {
  Weapon sword = Weapon(type: WeaponType.sword, bonusDamage: 12);
  Weapon staff = Weapon(type: WeaponType.bow, bonusDamage: 20);

  var arthur = knight(
    name: 'Артур', 
    health: 150, 
    damage: 20, 
    weapon: sword
  );

  var merlin = archer( 
    name: 'Мерлин', 
    health: 80, 
    damage: 10, 
    weapon: staff
  );

  print('--- ПОДГОТОВКА К БОЮ ---');
  print(arthur);
  print(merlin);
  print('---------------------------');

  arthur.attack(merlin);

  print(''); 

  if (merlin.health > 0) {
    merlin.attack(arthur);
  }

  print('--- ИТОГ БОЯ ---');
  print(arthur);
  print(merlin);
}
