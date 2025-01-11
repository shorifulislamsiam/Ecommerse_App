import 'package:ecommerse_app/Screen/home/Widgets/subcatagories.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(catagories[index].image),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  catagories[index].name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) =>SizedBox(width: 20,),
          itemCount: catagories.length,
          ),
    );
  }
}
