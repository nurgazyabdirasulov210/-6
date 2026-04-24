import 'dz6,4.dart';
import 'dz6.dart';

class knight extends character {
    knight({
         required String name,
         required int health,
         required int damage,
         required Weapon weapon
    }): super (
        name: name,
        health: health,
        damage: damage,
        weapon: weapon
    );

    @override
  void attack(character target) {
    int totalDamage = damage + weapon.bonusDamage;
    
    print('Рыцарь $name атакует ${target.name}!');
    
    target.takeDomage(totalDamage);
  }
}