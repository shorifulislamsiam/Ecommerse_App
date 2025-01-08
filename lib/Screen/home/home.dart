import 'package:ecommerse_app/Screen/home/Widgets/searchbar.dart';
import 'package:ecommerse_app/Screen/home/Widgets/slideimage.dart';
import 'package:ecommerse_app/color.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){},
                  //hoverColor: hoverColor,
                  style: IconButton.styleFrom(
                    backgroundColor: iconColor,
                    //hoverColor: hoverColor,
                    highlightColor: hoverColor,
                    ), 
                    icon: Icon(Icons.list)),
              
                  IconButton(onPressed: (){},
                  style: IconButton.styleFrom(backgroundColor: iconColor,), 
                  icon: Icon(Icons.favorite_outline_outlined))
                ],
              ),
            ),
            Searchbar(),
            SizedBox(height: 5,),
            slideimage(),
          ],
        ),
      ),
    ));
  }
}