import 'package:flutter/material.dart';
class Product {
  final String? image, title, description;
  final int? price, id, temp, water, height;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
    this.temp,
    this.water,
    this.height,
  });
}
List<Product> products = [
  Product(
    id: 1,
    title: "Peacock",
    price: 35,
    description:
        "The Peacock plant, is a beautiful tropical houseplant, famed for its beautiful.",
    image: "assets/Images/Peacock.png",
    color: Color(0xFFcbf2d3),
    temp: 26,
    water: 1,
    height: 10,
  ),
  Product(
    id: 2,
    title: "Snake Plant",
    price: 30,
    description:
        "Snake plants, also known as Sansevieria, are some of the most resilient houseplants out there",
    image: "assets/Images/Snake-Plant.png",
    color: Color(0xFFe8e299),
    temp: 27,
    water: 2,
    height: 12,
  ),
  Product(
    id: 3,
    title: "Peace Lily",
    price: 34,
    description:
        "Known for its indoor beauty and ability to clear the air of contaminants, this brilliant green plant with dazzling white blossoms makes a perfect gift .",
    image: "assets/Images/Peace-Lily.png",
    color: Color(0xFFfddce0),
    temp: 24,
    water: 1,
    height: 7,
  ),
  Product(
    id: 4,
    title: "variegated leaf",
    price: 40,
    description:
        "A variegated leaf is one that features at least one other color besides green.",
    image: "assets/Images/variegated-leaf-plant.png",
    color: Color(0xFFc1d6fa),
    temp: 30,
    water: 1,
    height: 12,
  ),
];