import 'package:args/args.dart';

import 'item.dart';
import 'robot.dart';
import 'robot_addons.dart';
import 'spy_robot.dart';
import 'transport_robot.dart';

void main(List<String> arguments) {
    robot_func();
    spyRobot_func();
    transportRobot_func();
}

void transportRobot_func(){
    // Create items.
    final lightItem = Item(name: 'Hat', weight: ItemWeight.light, description: 'You can wear this!');
    final lightItemTwo = Item(name: 'Pen', weight: ItemWeight.light);
    final normalItem = Item(name: 'Suitcase', weight: ItemWeight.normal);
    final heavyItem = Item(name: 'Car', weight: ItemWeight.heavy);
    // Create different types of transport robots.
    final lightTransportRobot = TransportRobot.light(name: 'Tim', age: 12);
    final normalTransportRobot = TransportRobot.normal(name: 'Jan', age: 5);
    final heavyTransportRobot = TransportRobot.heavy(name: 'Ralph', age: 10);
    // Check weight after creation to make sure it matches.
    print(lightTransportRobot.weight == ItemWeight.light); // Should output: true
    print(normalTransportRobot.weight == ItemWeight.normal); // Should output: true
    print(heavyTransportRobot.weight == ItemWeight.heavy); // Should output: true
    // When picking up an item, the Item must have same weight type as robot. // If has same weight type, pickUp will return true.
    // If does not have same weight type, pickup will return false.
    print(lightTransportRobot.items.isEmpty); // Should output: true
    print(lightTransportRobot.pickUp(lightItem)); // Should output: true
    print(lightTransportRobot.pickUp(lightItemTwo)); // Should output: true
    print(lightTransportRobot.pickUp(normalItem)); // Should output: false
    print(lightTransportRobot.pickUp(heavyItem)); // Should output: false
    print(lightTransportRobot.items[0].name); // Should output: Hat
    print(lightTransportRobot.items[1].name); // Should output: Pen
    // Check if TransportRobot is Robot.
    print(lightTransportRobot is Robot); // Should output: true.
    // Return item with name.
    print(lightTransportRobot.getItemWithName('Hat')?.name ?? 'No item'); // Should output: Hat
    print(lightTransportRobot.getItemWithName('key')?.name ?? 'No item'); // Should output: No item
    // Remove item.
    print(lightTransportRobot.remove('Hat')); // Should output: true
    print(lightTransportRobot.remove('Hat')); // Should output: false
    // Check if TransportRobot is JokingRobot and SingingRobot.
    print(lightTransportRobot is JokingRobot); // Should output: true.
    print(lightTransportRobot is SingingRobot); // Should output: true.
    // Should output correctly.
    lightTransportRobot.sayFavoriteJoke(); // Should output: My favorite joke is you!
    lightTransportRobot.singFavoriteSong(); // Should output: La da dee da da da!
}

void item_func(){
    // Create items.
    final lightItem = Item(name: 'Hat', weight: ItemWeight.light, description: 'You can wear this!');
    final lightItemTwo = Item(name: 'Pen', weight: ItemWeight.light);
    final normalItem = Item(name: 'Suitcase', weight: ItemWeight.normal);
    final heavyItem = Item(name: 'Car', weight: ItemWeight.heavy);

    // Print instance variable values which cannot be changed after assignment.
    print(lightItem.name); // Should output: Hat
    print(lightItem.description); // Should output: You can wear this!
    print(lightItem.weight); // Should output: ItemWeight.light
}

void robot_func(){
    // Use the named constructor when creating an instance
    final robot = Robot(name: 'Tom', age: 5);

    print(robot.name);
    print(robot.age);
    print(robot.isOn());
    robot.power = true;
    print(robot.isOn());
    robot.power = false;
    print(robot.isOn());
    robot.speak();
}

void spyRobot_func(){
    // Create a spy robot.
    final spyRobot = SpyRobot(name: 'Tom', age: 5);

    // Check if SpyRobot is Robot.
    print(spyRobot is Robot); // Should output: true.

    // Print spy robot's public properties.
    print(spyRobot.name); // Should output: Tom
    print(spyRobot.age); // Should output: 5

    // Speak with name and age.
    spyRobot.speak(); // Should output: Hello, my name is Tom and my age is 5! I am a spy robot!

    // Save a new secret.
    print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my old message!')); // Should output: true

    // Try to save a secret with the same codeWord.
    print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my new message!')); // Should output: false

    // Should have secret using codeWord.
    print(spyRobot.hasSecret('zulu')); // Should output: true
    print(spyRobot.hasSecret('kilo')); // Should output: false

    // Remove secret that exists.
    print(spyRobot.removeSecret('zulu')); // Should output: true

    // Remove secret that does not exist.
    print(spyRobot.removeSecret('zulu')); // Should output: false

    spyRobot.sayAllSecrets();

    print(spyRobot.saveSecret(codeWord: 'zulu', message: 'This is my old message!')); // Should output: true
    print(spyRobot.saveSecret(codeWord: 'kilo', message: 'Hello there!')); // Should output: true
    print(spyRobot.saveSecret(codeWord: 'foxtrot', message: 'Bye bye!')); // Should output: true

    // Say all secrets.
    spyRobot.sayAllSecrets();
}
