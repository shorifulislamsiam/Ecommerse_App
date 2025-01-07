import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        height: 60,
        color: Colors.greenAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.list_alt_rounded,
                size: 40,
                color: Colors.white,),
            ),
            GestureDetector(
              child: Icon(Icons.favorite_outline,size: 40,color: Colors.white,),
            ),
            SizedBox(width: 15,),
            GestureDetector(
              child: Icon(Icons.shopping_cart_outlined,size: 40,color: Colors.white,),
            ),
            GestureDetector(
              child: Icon(Icons.person,size: 40,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}