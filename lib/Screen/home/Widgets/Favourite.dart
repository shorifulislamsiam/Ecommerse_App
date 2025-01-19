import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  // late final Products product;
  // late final int quantity;
  // FavouriteProvider({required this.product, required this.quantity});

  //final List<FavouriteProvider> _favourite = [];
  final List<Products> _favourite = [];
  //List<FavouriteProvider> get favourite => _favourite;
  List<Products> get favourite => _favourite;

  void addFavouriteItem(Products product) {
    if (_favourite.contains(product)) {
      _favourite.remove(product);
      ChangeNotifier();
      print('Product removed from favorites: ${product.title}');
      
    } else {
      _favourite.add(product);
      ChangeNotifier();
      print('Product added to favorites: ${product.title}');
    }
    ChangeNotifier();
  }

  void increaseFavouriteItem(Products product) {
    if (_favourite.contains(product)) {
      product.quantity++;
      ChangeNotifier();
    }
  }

  void decreaseFavouriteItem(Products product) {
    if (_favourite.contains(product) && product.quantity > 1) {
      product.quantity--;
      ChangeNotifier();
    }
  }

  bool isExist(Products product) {
    final isExist = _favourite.contains(product);
    return isExist;
  }
}
