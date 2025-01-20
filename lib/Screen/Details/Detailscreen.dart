import 'package:ecommerse_app/Screen/Details/Addto_cart.dart';
import 'package:ecommerse_app/Screen/Details/Containerdetails.dart';
import 'package:ecommerse_app/Screen/Details/ImageSlider.dart';
import 'package:ecommerse_app/Screen/Details/detailsappbar.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});
  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final product = productsProvider.selectedImage;
    return Scaffold(
      floatingActionButton: const AddtoCart(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          //for back button share and favorite
          const Detailsappbar(),
          //for detail image slider
          Imageslider(
            image: product.image,
            onChange: (index) {
              setState(() {
                currentImage = index;
              });
            },
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                productsProvider.products.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          const Containerdetails(),
        ],
      ),
    );
  }
}
