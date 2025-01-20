import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Imageslider extends StatefulWidget {
  final Function(int) onChange;
  final String image;
  const Imageslider({super.key, required this.onChange, required this.image});

  @override
  State<Imageslider> createState() => _ImagesliderState();
}

class _ImagesliderState extends State<Imageslider> {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final product = productsProvider.selectedImage;
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Hero(
            tag: product.image, 
            child: Image.asset(product.image));
        },
      ),
    );
  }
}
