import 'package:flutter/material.dart';
import 'package:plants/models/products.dart';
import 'package:plants/pages/detail/detail_screen.dart';
import 'package:plants/pages/home/componets/productcard.dart';
import 'package:plants/utils/constants.dart';

import 'componets/menuicons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Plant Shop",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "All Space Around You",
                        style: TextStyle(fontSize: 16, color: kLightColor),
                      ),
                    ],
                  ),
                  IconButton(
                      color: kPrimaryColor,
                      icon: Icon(Icons.shopping_bag),
                      onPressed: () {}),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                border: Border.all(
                                  color: kLightColor,
                                ),
                              ),
                              child: IconButton(
                                  iconSize: 30,
                                  icon: Icon(Icons.search),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // menu Area
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: size.height * 0.60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: kSideBarColor,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MenuIcons(
                                    image: "assets/icons/indoor.svg",
                                    title: "indoor",
                                    press: () {},
                                  ),
                                  MenuIcons(
                                    image: "assets/icons/outdoor.svg",
                                    title: "outdoor",
                                    press: () {},
                                  ),
                                  MenuIcons(
                                    image: "assets/icons/garden.svg",
                                    title: "garden",
                                    press: () {},
                                  ),
                                  MenuIcons(
                                    image: "assets/icons/home.svg",
                                    title: "home",
                                    press: () {},
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: size.height * 0.8,
                        width: size.width * 0.60,
                        child: Column(
                          children: [
                            Expanded(
                                child: GridView.builder(
                              padding: EdgeInsets.all(20.0),
                              itemCount: products.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      childAspectRatio: 0.59),
                              itemBuilder: (context, index) => ProductCard(
                                product: products[index],
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                        product: products[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
