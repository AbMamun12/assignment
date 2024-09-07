import 'package:flutter/material.dart';

var myBagAppBar = AppBar(
  backgroundColor: Colors.grey.shade300,
  title: const Text(
    'My Bag',
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
  ),
);

class BagItem {
  final String productImage;
  final String productTitle;
  final String color;
  final String size;
  final double price;
  int quantity;

  BagItem({
    required this.productImage,
    required this.productTitle,
    required this.color,
    required this.size,
    required this.price,
    this.quantity = 1,
  });
}
