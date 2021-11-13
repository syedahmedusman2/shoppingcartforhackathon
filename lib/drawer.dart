import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/CartScreen.dart';
import 'package:shoppingcartforhackathon/Login.dart';
import 'package:shoppingcartforhackathon/about.dart';
import 'package:shoppingcartforhackathon/favoriteScreen.dart';

class DrawerSc extends StatelessWidget {
  const DrawerSc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              DrawerHeader(child: ListTile(title: Text('Username', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
            subtitle: Text('abcuser@gmail.com'),
            leading: CircleAvatar(radius: 26,backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),),)),
            ListTile(title: Text("Logout"),
            leading: Icon(Icons.exit_to_app),
            onTap:(){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Login()));}
            ),
            
            
             ListTile(title: Text("Cart"),
            leading: Icon(Icons.shopping_cart),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
            },
            
            ),
            ListTile(title: Text("Favorite"),
            leading: Icon(Icons.favorite),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
            },
            ),
            ListTile(title: Text("About"),leading: Icon(Icons.info),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
            },),
           
            
            
            ],
          ),
        ),

      ),
    );
  }
}