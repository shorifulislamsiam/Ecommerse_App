import 'package:ecommerse_app/Screen/Cart/CartScreen.dart';
import 'package:ecommerse_app/Screen/Details/Detailscreen.dart';
import 'package:ecommerse_app/Screen/home/Favourite.dart';
import 'package:ecommerse_app/Screen/home/home.dart';
import 'package:flutter/material.dart';
import 'color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List screens = [
      home(),
      Favourite(),
      //Detailscreen(products: products)
      Detailscreen(),
      Cartscreen()
    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("hello world"),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 0;
          });
        },
        shape: CircleBorder(),
        backgroundColor: normalColor,
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        height: 60,
        color: Colors.greenAccent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                // setState(() {
                //   currentIndex = 1;
                // });
              },
              icon: Icon(Icons.list_alt_rounded,
                  size: 40,
                  color: currentIndex == 1 ? normalColor : Colors.white),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              icon: Icon(
                Icons.favorite_outline,
                size: 40,
                color: currentIndex == 2 ? normalColor : Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Cartscreen()));
                // setState(() {
                //   currentIndex = 3;
                // });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 40,
                color: currentIndex == 3 ? normalColor : Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 40,
                color: currentIndex == 4 ? normalColor : Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
