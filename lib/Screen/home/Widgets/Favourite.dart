import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<Products> _favourite = [];
  List<Products> get favourite => _favourite;

  bool addFavouriteItem(Products product) {
    if (_favourite.contains(product)) {
      _favourite.remove(product);
      notifyListeners();
      print('Product removed from favorites: ${product.title}');
      return false;
    } else {
      _favourite.add(product);
      notifyListeners();
      print('Product added to favorites: ${product.title}');
      return true;
    }
    //notifyListeners();
  }

  void increaseFavouriteItem(Products product) {
    if (_favourite.contains(product)) {
      product.quantity++;
      notifyListeners();
    }
  }

  void decreaseFavouriteItem(Products product) {
    if (_favourite.contains(product) && product.quantity > 1) {
      product.quantity--;
      notifyListeners();
    }
  }

  bool isExist(Products product) {
    final isExist = _favourite.contains(product);
    return isExist;
  }
}
