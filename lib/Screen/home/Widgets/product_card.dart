import 'package:ecommerse_app/Screen/Details/Detailscreen.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final Products products;
  final int index;
  const ProductCard(
      {super.key,
      required this.products,
      required this.index});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Provider.of<ProductsProvider>(context, listen: false).selectedIndexImage(widget.index);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => const Detailscreen()));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Hero(
                  tag: widget.products.image,
                  child: Center(
                    child: Image.asset(
                      widget.products.image,
                      width: 135,
                      height: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.products.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${widget.products.price}",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Row(
                      children: [
                        ...List.generate(
                          widget.products.colors.length,
                          (index) => Container(
                            width: 18,
                            height: 18,
                            margin: const EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color: widget.products.colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 25,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: (){},
                  child: const Icon(Icons.favorite,color: Colors.white, size: 22,),
                ),
              ),
            ),
            ),
        ],
      ),
    );
  }
}
