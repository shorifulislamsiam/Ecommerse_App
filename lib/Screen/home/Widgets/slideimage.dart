import 'package:flutter/material.dart';

class slideimage extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const slideimage({super.key, required this.currentSlide, required this.onChange});

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
              onPageChanged: onChange,
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
                Image.asset(
                  "assets/slideimage2.jpg",
                  fit: BoxFit.cover,
                ),
                //...imagee //this spread of imagee is to use use of list directly in the children
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
