import 'dart:ui';

import 'package:flutter/material.dart';

class Products {
  //final String id;
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
      {
        //required this.id,
      required this.title,
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

class CartItem {
  final Products product;
  late int quantity;
  CartItem({required this.product, required this.quantity });
}

class ProductsProvider with ChangeNotifier {
  final List<Products> _products = [
    Products(
        ///id: "1",
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
        //id: "2",
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
        //id: "3",
        title: "Sweter",
        Description: "This is a Sweter",
        image: "assets/sweter.jpg",
        price: 350,
        review: "{38 reviews}",
        seller: "B khan",
        colors: [Colors.red, Colors.pink, Colors.yellow],
        category: "Dress",
        rate: 4.4,
        quantity: 8),
    Products(
        //id: "4",
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

  final List<CartItem> _cart = [];
  int _selectedImage = 0;

  List<Products> get products => _products;
  List<CartItem> get cart => _cart;
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

  // void toggleFavourite(Products product) {
  //   if (_cart.contains(product)) {
  //     return;
  //     //product.quantity++;
  //   } else {
  //     _cart.add(product);
  //   }
  //   notifyListeners();
  // }

//update -15start
  // void increaseQuantity(Products product) {
  //   final existingCartItem = _cart.firstWhere((item) => item.product.id == product.id);
  //   if (existingCartItem != null) {
  //     existingCartItem.quantity++;
  //     notifyListeners();
  //   }
  // }

  // void decreaseQuantity(Products product) {
  //   final existingCartItem = _cart.firstWhere((item) => item.product.id == product.id);

  //   if (existingCartItem != null && existingCartItem.quantity > 1) {
  //     existingCartItem.quantity--;
  //     notifyListeners();
  //   }
  // }

  // int getproductQuantity(Products product) {
  //   final existingCartItem = _cart.firstWhere((item) => item.product.id == product.id);
  //   return existingCartItem.quantity;
  // }
//update -15end

  void increaseQuantity(Products product) {
    //final existingCartItem =_cart.firstWhere((item) => item.product.id == product.id);
    if (_products.contains(product)) { // && existingCartItem != null
      product.quantity++;
      //notifyListeners();
    }
    notifyListeners();
  }

  void decreaseQuantity(Products product) {
    //final existingCartItem =_cart.firstWhere((item) => item.product.id == product.id);
    if (_products.contains(product) && product.quantity > 1 ) {//&&existingCartItem != null
        
      //
      product.quantity--;
      notifyListeners();
    }
    // else {
    //   _cart.remove(product);
    //   notifyListeners();
    // }
    //notifyListeners();
  }

  // int? getproductQuantity(Products product) {
  //   //final existingCartItem =_cart.firstWhere((item) => item.product.id == product.id);
  //   if (_cart.contains(product)) {
  //     return product.quantity;
  //   }
  //   return 0;
  // }
  int? getproductQuantity(Products product) {
    //final existingCartItem =_cart.firstWhere((item) => item.product.id == product.id);
    if (_products.contains(product)) {
      return product.quantity;
    }
    return 0;
  }

  // void addToCart(Products product) {
  //   final existingCartItem = _cart.firstWhere((item) => item.product.id == product.id);

  //   if (existingCartItem != null) {
  //     existingCartItem.quantity++;
  //   } else {
  //     _cart.add(CartItem(product: product));
  //   }
  //   notifyListeners();
  // }
  void addToCart(Products product) {
    
    _cart.add(CartItem(product: product, quantity: product.quantity));
    notifyListeners();
  }

  void removeFromCart(Products product) {
    _cart.removeWhere((item) => item.product.quantity== product.quantity);
    notifyListeners();
  }

  // incrementQtn(int index) => _cart[index].quantity++;
  // decrementQtn(int index) => _cart[index].quantity--;
}
