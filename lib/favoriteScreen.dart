import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/homepage.dart';

class Favorite extends StatefulWidget {
  const Favorite({ Key? key }) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Row(
        children: [Text("Favorite"), Icon(Icons.favorite, color: Colors.red,)],
      ),),
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          child: Card(
            child: Column(
              children:[
                Image(image: NetworkImage(productimagefav[index]),width: MediaQuery.of(context).size.width*1,
                height: 120,fit: BoxFit.contain,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(pnameforfav[index], style: TextStyle(fontWeight: FontWeight.w700),),
                    Text(productpricefav[index], style: TextStyle(fontWeight: FontWeight.w500),),
                  ],
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  IconButton(onPressed: (){
                    setState(() {
                      productpricefav.removeAt(index);
                      pnameforfav.removeAt(index);
                      productimagefav.removeAt(index);
                    });
                    // productnamecart.remove()
                  }, icon: Icon(Icons.delete)),
                  
                ],)
                
              ]
            ),
          
          ),
        );
      }, itemCount: pnameforfav.length,),
      
    );
  }
}