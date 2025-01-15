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
  int quantity; //late final

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
      this.quantity = 1});
}

class ProductsProvider with ChangeNotifier {
  final List<Products> _products = [
    Products(
        title: "Wireless Headphones",
        Description: "This is a Headphone",
        image: "assets/headphone1.jpg",
        price: 1200,
        review: "(320 Reviews)",
        seller: "A islam",
        colors: [Colors.black, Colors.blue, Colors.orange],
        category: "Electronics",
        rate: 4.8,
        quantity: 6),
    Products(
        title: "Smart Watch",
        Description: "A digital smart watch",
        image: "assets/smartwatch.jpg",
        price: 1120,
        review: "(99 Review)",
        seller: "Electro Gadget",
        colors: [Colors.black, Colors.green, Colors.grey],
        category: "Electronics",
        rate: 4.4,
        quantity: 4),
    Products(
        title: "Sweter",
        Description: "This is a Sweter",
        image: "assets/sweter.jpg",
        price: 350,
        review: "{38 reviews}",
        seller: "B khan",
        colors: [Colors.red, Colors.pink, Colors.yellow],
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
        colors: [Colors.black, Colors.green, Colors.grey],
        category: "Electronics",
        rate: 4.4,
        quantity: 4),
    
  ];

  final List<Products> _cart = [];
  int _selectedImage = 0;

  List<Products> get products => _products;
  List<Products> get cart => _cart;
  int get selectedIndex => _selectedImage;
  Products get selectedImage => _products[_selectedImage];

  void addProduct(Products product) {
    _products.add(product);
    notifyListeners();
  }

  void selectedIndexImage(int index) {
    _selectedImage = index;
    notifyListeners();
  }

  void toggleFavourite(Products product) {
    if (_cart.contains(product)) {
      return;
      //product.quantity++;
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  void addToCart(Products product) {
    if (!_cart.contains(product)) {
      _cart.add(product);
    }
    notifyListeners();
  }

  void increaseQuantity(Products product) {
    if (_cart.contains(product)) {
      product.quantity++;
      notifyListeners();
      
    }
    notifyListeners();
  }
  

  void decreaseQuantity(Products product) {
    if (_cart.contains(product) && product.quantity > 1) {
      //
      product.quantity--;
      notifyListeners();
    } else {
      _cart.remove(product);
    }
    notifyListeners();
  }

  int? getproductQuantity(Products product) {
    if (_cart.contains(product)) {
      return product.quantity ;
    }
    return 0;
  }
}
