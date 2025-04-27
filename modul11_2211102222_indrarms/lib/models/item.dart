class Item {
  final int id;
  final String name;
  final double price;
  int quantity;

  Item({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1, // Default quantity = 1
  });
}
