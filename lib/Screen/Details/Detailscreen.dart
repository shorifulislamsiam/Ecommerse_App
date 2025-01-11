import 'package:ecommerse_app/Screen/Details/ImageSlider.dart';
import 'package:ecommerse_app/Screen/Details/detailsappbar.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key}); //, required this.product

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final product = productsProvider.selectedImage; // Get the selected product
    //final List<Products> product = productsProvider.products;
    return Scaffold(
      body: Column(
        children: [
          //for back button share and favorite
          Detailsappbar(),
          //for detail image slider
          Imageslider(
            image: product.image,
            onChange: (index) {
              currentImage = index;
            },
          ),
        ],
      ),
    );
  }
}
