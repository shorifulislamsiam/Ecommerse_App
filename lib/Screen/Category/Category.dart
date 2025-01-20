import 'package:ecommerse_app/Screen/home/Widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';

class CategoryProducts extends StatelessWidget {
  final String category;
  const CategoryProducts({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final List<Products> categoryProducts = productsProvider.getProductsByCategory(category);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$category Products",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) {
          final product = categoryProducts[index];
          return ProductCard(products: product, index: index);
        },
      ),
    );
  }
}
