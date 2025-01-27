import 'package:ecommerse_app/Screen/Cart/CartScreen.dart';
import 'package:ecommerse_app/Screen/Profile/Preference.dart';
import 'package:ecommerse_app/Screen/home/Widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final prouductsProvider = Provider.of<ProductsProvider>(context);
    final totalCartItem = prouductsProvider.getTotalCartItem();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 5),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 65,
                      ),
                    ),
                  ),
                  const Text(
                    "Person Name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "user@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Edit profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Inventories",
                    style: TextStyle(fontSize: 18), textAlign: TextAlign.start),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(width: 0.8, color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 30,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart,
                            ),
                          ),
                          const Text(
                            "My stores",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 22,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: Text(
                              "$totalCartItem",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 45,
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Cartscreen()));
                      },
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 30,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings_outlined,
                            ),
                          ),
                          const Text(
                            "Support",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const SizedBox(
                            width: 160,
                          ),
                          const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Preferences",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const Preference(),
          ],
        ),
      ),
    );
  }
}
