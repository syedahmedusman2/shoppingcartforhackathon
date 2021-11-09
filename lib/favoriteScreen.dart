import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/homepage.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home Page'),
          backgroundColor: Colors.indigo[900],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://media.istockphoto.com/vectors/shopping-vector-seamless-pattern-vector-eps8-format-vector-id1043135760?k=20&m=1043135760&s=612x612&w=0&h=NZO7oOiclK9zdOXZRqJtt-X2gJTDqBWPBwmXoQg-6-Y=',
                      ),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.335,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    pnameforfav.removeAt(index);
                                    productpricefav.removeAt(index);
                                    productimagefav.removeAt(index);
                                  });
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('Removed from favorites'),
                                  duration: Duration(seconds: 2),
                                ));
                                
                                },
                                icon: Icon(Icons.delete)),
                            new Container(
                              color: Colors.transparent,
                              child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.orange[900],
                                      borderRadius: new BorderRadius.all(
                                        Radius.circular(10.0),
                                      )),
                                  child: new Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: new Text(
                                        "30% off",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )),
                            ),
                          ]),
                      Image(
                        image: NetworkImage(productimagefav[index]),
                        height: 130,
                        fit: BoxFit.contain,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              pnameforfav[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Text(
                              productpricefav[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                pnameforcart.add(pnameforfav[index]);
                                productimagecart.add(productimagefav[index]);
                                productpricecart.add(productpricefav[index]);
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('Added to Cart'),
                                  duration: Duration(seconds: 2),
                                ));
                              },
                              icon: Icon(Icons.shopping_cart_outlined)),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            );
          },
          itemCount: pnameforfav.length,
        ));
  }
}
