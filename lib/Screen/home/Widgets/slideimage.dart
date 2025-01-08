import 'package:flutter/material.dart';

class slideimage extends StatelessWidget {
  const slideimage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Image> imagee = [
    //   Image.asset("assets/slideimage2.jpg,",fit: BoxFit.cover),
    //   Image.asset("assets/slidepage1.jpg",fit: BoxFit.cover),
    // ];
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              //allowImplicitScrolling: true,//this allow to scroll even finish the ascending scrolling
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/slideimage2.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slidepage1.jpg",
                  fit: BoxFit.cover,
                ),
                //...imagee //this spread of imagee is to use use of list directly in the children 
              ],
            ),
          ),
        )
      ],
    );
  }
}
