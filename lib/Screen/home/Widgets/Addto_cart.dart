import 'package:flutter/material.dart';
class AddtoCart extends StatelessWidget {
  
  const AddtoCart({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex=1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
          
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white,width: 2)
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){},
                  iconSize: 18, 
                  icon: const Icon(Icons.remove,color: Colors.white,),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    currentIndex.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){},
                  iconSize: 18,
                  icon: const Icon(Icons.add,color: Colors.white,),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}