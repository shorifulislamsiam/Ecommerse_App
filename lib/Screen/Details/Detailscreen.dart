import 'package:ecommerse_app/Screen/Details/detailsappbar.dart';



import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
 
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //for back button share and favorite
          Detailsappbar(),
          //for detail image slider
          
        ],
      ),
    );
  }
}
