import 'package:ecommerse_app/Screen/home/Widgets/Favourite.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailsappbar extends StatefulWidget {
  const Detailsappbar({super.key});
  @override
  State<Detailsappbar> createState() => _DetailsappbarState();
}

class _DetailsappbarState extends State<Detailsappbar> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavouriteProvider>(context);
    final products = Provider.of<ProductsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(padding: const EdgeInsets.all(15)),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
                padding: const EdgeInsets.all(15), iconSize: 20),
            onPressed: () {
              bool  added =
                  favoriteProvider.addFavouriteItem(products.selectedImage);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      added ? "Added to Favorite" : "Remove from Favorite")));
            },
            icon: Icon(
              favoriteProvider.isExist(products.selectedImage)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
