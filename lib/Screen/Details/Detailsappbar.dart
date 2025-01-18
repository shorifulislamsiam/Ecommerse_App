import 'package:flutter/material.dart';

class Detailsappbar extends StatelessWidget {
  const Detailsappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
                //backgroundColor: iconColor,
                padding: const EdgeInsets.all(15)),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
                //backgroundColor: iconColor,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
                //backgroundColor: iconColor,
                padding: const EdgeInsets.all(15),
                iconSize: 20),
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}
