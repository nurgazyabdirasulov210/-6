import 'dz6,4.dart';

abstract class character {
    String name;
    int health;
    int damage;
    Weapon weapon;

    character({
       required this.name,
       required this.health,
       required this.damage,
       required this.weapon
    });
    
    void takeDomage(int incomicdamage) {
        this.health -= incomicdamage;
        print('$name получил $incomicdamage урона, осталось $health hp');

        if(health <= 0) {
            die();
        }
    }

    void attack(character target);

  void die() {
    print('$name погиб');
  }

  @override
  String toString() {
    return 'Имя: $name | HP: $health | Оружие: $weapon';
  }
}