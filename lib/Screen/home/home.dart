import 'package:ecommerse_app/Screen/home/Widgets/catagories.dart';
import 'package:ecommerse_app/Screen/home/Widgets/product_card.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:ecommerse_app/Screen/home/Widgets/searchbar.dart';
import 'package:ecommerse_app/Screen/home/Widgets/slideimage.dart';
import 'package:ecommerse_app/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<Products> product = productsProvider.products;
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: iconColor,
                          highlightColor: hoverColor,
                        ),
                        icon: Icon(Icons.list)),
                    IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: iconColor,
                        ),
                        icon: Icon(Icons.favorite_outline_outlined))
                  ],
                ),
              ),
              Searchbar(),
              SizedBox(
                height: 5,
              ),
              slideimage(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              SizedBox(
                height: 5,
              ),
              Catagories(),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              //for shopping item
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                       products: product[index],
                       index:  index,
                      
                    );
                  },
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
