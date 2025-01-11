import 'dart:ui';

import 'package:flutter/material.dart';

class Products {
  final String title;
  final String Description;
  final String image;
  final double price;
  final String review;
  final String seller;
  final List<Color> colors;
  final String category;
  final double rate;
  final int quantity;

  Products(
      {required this.title,
      required this.Description,
      required this.image,
      required this.price,
      required this.review,
      required this.seller,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

List<Products> products = [
  Products(
    title: "Wireless Headphones", 
    Description: "This is a Headphone", 
    image: "assets/headphone1.jpg", 
    price: 1200, 
    review: "(320 Reviews)", 
    seller: "A islam", 
    colors: [Colors.black,Colors.blue,Colors.orange], 
    category: "Electronics", 
    rate: 4.8, 
    quantity: 2),

  Products(
    title: "Sweter", 
    Description: "This is a Sweter", 
    image: "assets/sweter.jpg", 
    price: 350, 
    review: "{38 reviews}", 
    seller: "B khan", 
    colors: [Colors.red,Colors.pink,Colors.yellow], 
    category: "Dress", 
    rate: 4.4, 
    quantity: 4),
  Products(
    title: "Smart Watch", 
    Description: "A digital smart watch", 
    image: "assets/smartwatch.jpg", 
    price: 1120, 
    review: "(99 Review)", 
    seller: "Electro Gadget", 
    colors: [Colors.black,Colors.green,Colors.grey], 
    category: "Electronics", 
    rate: 4.4, 
    quantity: 2
    ),
    
];
