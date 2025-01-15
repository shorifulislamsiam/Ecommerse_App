import 'package:flutter/material.dart';

class Imageslider extends StatefulWidget {
  final Function(int) onChange;
  final String image;
  //final List<String> image;
  const Imageslider({super.key, required this.onChange, required this.image});

  @override
  State<Imageslider> createState() => _ImagesliderState();
}

class _ImagesliderState extends State<Imageslider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Hero(tag: widget.image, child: Image.asset(widget.image));
        },
      ),
    );
  }
}
