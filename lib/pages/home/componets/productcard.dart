import 'package:flutter/material.dart';
import 'package:plants/models/products.dart';
import 'package:plants/utils/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);
  final Product? product;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, bottom: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: product!.color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                child: Column(
                  children: [
                    Image.asset(product!.image.toString()),
                    Text(
                      product!.title.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.shopping_bag),
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
