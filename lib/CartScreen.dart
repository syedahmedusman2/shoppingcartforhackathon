import 'package:flutter/cupertino.dart';
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
         
          centerTitle: true,
          title: Row(children: [Text("MyCart"), Icon(Icons.shopping_cart_outlined, color: Colors.red,)],),
          backgroundColor: Colors.indigo[900],
        ),
        body: Container(
           decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                     'https://media.istockphoto.com/vectors/shopping-vector-seamless-pattern-vector-eps8-format-vector-id1043135760?k=20&m=1043135760&s=612x612&w=0&h=NZO7oOiclK9zdOXZRqJtt-X2gJTDqBWPBwmXoQg-6-Y=',),fit: BoxFit.cover)
                ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                 height: MediaQuery.of(context).size.height*0.37,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                        
                        
                        new Container(
            
            color: Colors.transparent,
            child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: new BorderRadius.all(
                   Radius.circular(10.0),
                  )
                ),
                child: new Center(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text("30% off", style: TextStyle(color: Colors.white),),
                ),
             )
           ),
          ),
                      ]),
                      Image(
                        image: NetworkImage(productimagecart[index]),
                        height: 130,
                        fit: BoxFit.contain,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              pnameforcart[index],
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,10,0),
                            child: Text(
                              productpricecart[index],
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: ElevatedButton(style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                            ),child: Text("Check Out"), onPressed: (){}),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  
                                pnameforcart.removeAt(index);
                                productpricecart.removeAt(index);
                                productimagecart.removeAt(index);


                                });
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('Removed from Cart'),
                                  duration: Duration(seconds: 2),
                                ));
                                
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      )
                    ]),
                  ),
                ),
              );
            },
            itemCount: pnameforcart.length,
          ),
        ));
  }
}