import 'package:ecommerse_app/Screen/home/Widgets/product_card.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Listall extends StatelessWidget {
  //final String category;, required this.category
  const Listall({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<Products> product = productsProvider.products;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Products",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
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
                    return Container(
                      color: Colors.white,
                      child: ProductCard(
                         products: product[index],
                         index:  index,
                        
                      ),
                    );
                  },
                  ),
    );
  }
}