import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/Login.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), (){
      // print("HELLO WORLD");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
              padding: const EdgeInsets.all(17),
              child: Container(child: Center(child: Image.asset('assets/ecom.gif')))
               ),

      ],)
      
    );
  }
}