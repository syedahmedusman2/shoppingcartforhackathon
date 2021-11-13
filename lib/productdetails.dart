import 'dart:html';

import 'package:flutter/material.dart';
class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key, required this.image, required this.name, required this.price, required this.desc}) : super(key: key);
  String image;
  String? name;
  dynamic price;
  String? desc;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: <Widget>[
                Container(width:MediaQuery.of(context).size.width*1,
                height: MediaQuery.of(context).size.height*0.5,
                child: Image.network(image)),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name!,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('\$$price'.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),
                  ),
                  
                ],),
                  SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(desc!, style: TextStyle(fontSize: 15),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}