import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/Login.dart';
import 'package:shoppingcartforhackathon/homepage.dart';
import 'package:shoppingcartforhackathon/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home:Splash());
  }
}
