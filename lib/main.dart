import 'package:flutter/material.dart';
import 'package:plants/pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter Plant',
       theme: ThemeData(
         primaryColor: Colors.blue,
       ),
       home: HomeScreen(),
      
    );
  }
}