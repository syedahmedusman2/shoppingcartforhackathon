import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/homepage.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          child: Card(
            child: Column(
              children:[
                Image(image: NetworkImage(productimagecart[index]),width: MediaQuery.of(context).size.width*1,
                height: 120,fit: BoxFit.contain,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(pnameforcart[index], style: TextStyle(fontWeight: FontWeight.w700),),
                    Text(productpricecart[index], style: TextStyle(fontWeight: FontWeight.w500),),
                  ],
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  IconButton(onPressed: (){
                    setState(() {
                      productpricecart.removeAt(index);
                      pnameforcart.removeAt(index);
                      productimagecart.removeAt(index);
                    });
                    // productnamecart.remove()
                  }, icon: Icon(Icons.delete)),
                  
                ],)
                
              ]
            ),
          
          ),
        );
      }, itemCount: pnameforcart.length,),
      
    );
  }
}