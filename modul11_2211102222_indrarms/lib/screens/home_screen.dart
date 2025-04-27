import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../models/item.dart';
import 'cart_screen.dart';
import 'package:intl/intl.dart'; // Import intl untuk format mata uang

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> availableItems = [
    Item(id: 1, name: "Smartphone Android", price: 3500000),
    Item(id: 2, name: "Laptop Gaming", price: 15000000),
    Item(id: 3, name: "Tablet iPad", price: 8000000),
    Item(id: 4, name: "Smartwatch", price: 2500000),
    Item(id: 5, name: "Headphone Wireless", price: 1200000),
    Item(id: 6, name: "Speaker Bluetooth", price: 950000),
    Item(id: 7, name: "Kamera DSLR", price: 7000000),
    Item(id: 8, name: "Printer Inkjet", price: 2000000),
    Item(id: 9, name: "Monitor 4K", price: 5000000),
    Item(id: 10, name: "Mouse Gaming", price: 600000),
    Item(id: 11, name: "Keyboard Mechanical", price: 1300000),
    Item(id: 12, name: "External Hard Disk 1TB", price: 1000000),
    Item(id: 13, name: "Router WiFi 6", price: 850000),
    Item(id: 14, name: "TV LED 55 Inch", price: 8500000),
    Item(id: 15, name: "Drone Kamera", price: 5000000),
    Item(id: 16, name: "Earbuds TWS", price: 750000),
    Item(id: 17, name: "Powerbank 20000mAh", price: 450000),
    Item(id: 18, name: "Smart Home Assistant", price: 2000000),
    Item(id: 19, name: "VR Headset", price: 6000000),
    Item(id: 20, name: "Graphics Card RTX 4070", price: 12000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("indrarms"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: availableItems.length,
        itemBuilder: (context, index) {
          final item = availableItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(
              NumberFormat.currency(
                locale: 'id_ID',
                symbol: 'Rp ',
              ).format(item.price),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).add(item);
              },
              child: const Text("Tambah"),
            ),
          );
        },
      ),
    );
  }
}
