import 'package:ecommerse_app/Screen/Details/Itemdetails.dart';
import 'package:flutter/material.dart';

class Containerdetails extends StatelessWidget {
  const Containerdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      //height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Itemdetails(),
        ],
      ),
    );
  }
}