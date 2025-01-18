import 'package:ecommerse_app/Screen/Details/Itemdetails.dart';
import 'package:flutter/material.dart';

class Containerdetails extends StatefulWidget {
  const Containerdetails({super.key});

  @override
  State<Containerdetails> createState() => _ContainerdetailsState();
}

class _ContainerdetailsState extends State<Containerdetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      //height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 100,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Itemdetails(),
        ],
      ),
    );
  }
}