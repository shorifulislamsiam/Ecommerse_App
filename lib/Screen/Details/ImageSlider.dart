import 'package:flutter/material.dart';

class Imageslider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  //final List<String> image;
  const Imageslider({super.key, required this.onChange, required this.image});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Image.asset(image);
        },
      ),
    );
  }
}
