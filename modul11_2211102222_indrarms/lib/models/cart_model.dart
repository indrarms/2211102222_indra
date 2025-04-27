import 'package:flutter/foundation.dart';
import 'item.dart'; // Pastikan import ini ada

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;

  double get totalPrice =>
      _items.fold(0, (total, item) => total + (item.price * item.quantity));

  void add(Item item) {
    final index = _items.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      _items[index].quantity++; // Tambah jumlah jika sudah ada di keranjang
    } else {
      _items.add(item);
    }
    notifyListeners();
  }

  void decreaseQuantity(Item item) {
    final index = _items.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--; // Kurangi jumlah jika lebih dari 1
      } else {
        _items.removeAt(index); // Hapus jika jumlahnya 1
      }
      notifyListeners();
    }
  }
}
