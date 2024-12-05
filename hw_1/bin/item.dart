enum ItemWeight { light, normal, heavy }

class Item {
  final String name;
  final ItemWeight weight;
  final String? description;

  Item({required this.name, required this.weight, this.description});
}