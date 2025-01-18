import 'package:ecommerse_app/color.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containarColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: iconColor,
              size: 30,
              ),
              const SizedBox(width: 15,),
              const Flexible(
                flex: 4,
                child: TextField(
                decoration: InputDecoration(
                  hintText: "Search..",
                  border: InputBorder.none,
                ),
              ),
              ),
            Container(
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.tune)),
              )
          ],
        ),
      ),
    );
  }
}