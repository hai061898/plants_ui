import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({
    Key? key,
    this.title,
    this.press,
    this.image,
  }) : super(key: key);
  final String? image;
  final String? title;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            iconSize: 30, icon: SvgPicture.asset(image!), onPressed: press),
        Text(title!),
      ],
    );
  }
}