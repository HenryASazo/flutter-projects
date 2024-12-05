// Create a new file named robot_addons.dart
import 'item.dart';
import 'robot.dart';
import 'robot_addons.dart';

// Update the TransportRobot class in transport_robot.dart
class TransportRobot extends Robot implements JokingRobot, SingingRobot {
  final ItemWeight weight;
  List<Item> items = [];

  TransportRobot({required String name, required int age, required this.weight})
      : super(name: name, age: age);

  // Named constructor for light TransportRobot
  TransportRobot.light({required String name, required int age})
      : weight = ItemWeight.light,
        super(name: name, age: age);

  // Named constructor for normal TransportRobot
  TransportRobot.normal({required String name, required int age})
      : weight = ItemWeight.normal,
        super(name: name, age: age);

  // Named constructor for heavy TransportRobot
  TransportRobot.heavy({required String name, required int age})
      : weight = ItemWeight.heavy,
        super(name: name, age: age);

  bool pickUp(Item item) {
    if (item.weight == weight) {
      items.add(item);
      return true;
    }
    return false;
  }

  Item? getItemWithName(String itemName) {
    Item? foundItem;
    for (var item in items) {
      if (item.name == itemName) {
        foundItem = item;
        break;
      }
    }
    return foundItem;
  }

  bool remove(String itemName) {
    final item = getItemWithName(itemName);
    if (item != null) {
      items.remove(item);
      return true;
    }
    return false;
  }

  @override
  void sayFavoriteJoke() {
    print('My favorite joke is you!');
  }

  @override
  void singFavoriteSong() {
    print('La da dee da da da!');
  }
}
