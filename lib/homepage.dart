import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/CartScreen.dart';
import 'package:shoppingcartforhackathon/drawer.dart';
import 'package:shoppingcartforhackathon/favoriteScreen.dart';

var cartnum = 0;
List<bool> isFavourite = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];
List productnamecart = [];
List pnameforcart = [];
List productpricecart = [];
List productimagecart = [];
List pnameforfav = [];
List productpricefav = [];
List productimagefav = [];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color? col;

  List productName = [
    'Yellow T-Shirt',
    'Blue Jeans',
    'Joggers',
    'Checkers Shirt',
    'Cargo Pants',
    'Jeans',
    'Shoes',
    'Formal Shirt',
  ];
  List productPrice = [
    '\$50',
    '\$100',
    '\$150',
    '\$200',
    '\$250',
    '\$300',
    '\$350',
    '\$400',
  ];
  List productImage = [
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'https://assets.ajio.com/medias/sys_master/root/h5a/h59/13018715881502/-1117Wx1400H-460342492-blue-MODEL.jpg',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRFabR7KEOtwuDgq21epP_DHPC0c6MDBu6LQ&usqp=CAU',
    'https://res.cloudinary.com/atoms-shoes/image/upload/c_scale,w_1400,q_auto,f_auto/v1622733115/products/shoes/model000/black-white_profile',
    'data:image/jpeg;base64,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',
  ];
  bool ispressed = false;
  // bool isfavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo[900],
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: DrawerSc(),
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                }),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Badge(
                  badgeContent: Text(cartnum.toString()),
                  child: Icon(Icons.shopping_cart),
                ),
              ),
            ),
          ],
          centerTitle: true,
          title: Text('Home Page'),
          backgroundColor: Colors.indigo[900],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  car("Shoes", "10 Pieces left",'https://images.designtrends.com/wp-content/uploads/2016/01/23124925/Rosso-Italiano-Black-Light-Formal-Shoe.jpg'),
                  car("Suit", "5 Pieces left", 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrAyIVyuU1zBUX21e2LIbHecl7pa4H8t0JZX5UEpyGapFcdOHD918t_fZLI4cHK3Y_TT4&usqp=CAU'),
                  car("Shirts", "18 Pieces left", productImage[7]),
                  car("T-Shirts", "9 Pieces left", productImage[0]),
                  car("Joggers", "0 Pieces left", productImage[2]),
                  car("Jeans", "3 Pieces left", productImage[1]),
                  car("Track Suits", "22 Pieces left",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM95sz4WiJQvXj6qkVgd0m-JFJi17-05Qm5eFK3G--5aYE_nIN3WT6f7-EeAOlvOTErqA&usqp=CAU'),
                  
                ],
              ),
            ),
            
            Expanded(
              child: ListView.builder(
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
                        height: MediaQuery.of(context).size.height * 0.37,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (pnameforfav
                                          .contains(productName[index])) {
                                        print("Item already Exist");
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.white70,
                                          content: Text(
                                            'Item Already exist in favourite',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          duration: Duration(seconds: 2),
                                        ));
                                        setState(() {
                                          ispressed = true;
                                          isFavourite[index] = true;
                                        });
                                      } else {
                                        pnameforfav.add(productName[index]);
                                        productimagefav
                                            .add(productImage[index]);
                                        productpricefav
                                            .add(productPrice[index]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.white70,
                                          content: Text(
                                            'Added to favorites',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          duration: Duration(seconds: 2),
                                        ));
                                        setState(() {
                                          ispressed = true;
                                          isFavourite[index] = true;
                                        });
                                        // productName[index].isFavorite = true;

                                      }
                                    },
                                    icon: isFavourite[index]
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        : Icon(Icons.favorite_border),
                                    // ? Icon(
                                    //     Icons.favorite,
                                    //     color: Colors.red,
                                    //   )
                                    // : Icon(Icons.favorite_border),
                                    // Icon(
                                    //   Icons.favorite_border_outlined,
                                    //   color: pnameforfav.contains(productName[index])
                                    //       ? Colors.red
                                    //       : Colors.black,
                                    // ),
                                  ),
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
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                  ),
                                ]),
                            Image(
                              image: NetworkImage(productImage[index]),
                              height: 120,
                              fit: BoxFit.contain,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    productName[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 10, 0),
                                  child: Text(
                                    productPrice[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      pnameforcart.add(productName[index]);
                                      productimagecart.add(productImage[index]);
                                      productpricecart.add(productPrice[index]);
                                      setState(() {
                                        cartnum++;
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        backgroundColor: Colors.white70,
                                        content: Text(
                                          'Added to cart',
                                          style: TextStyle(color: Colors.black),
                                        ),
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
                itemCount: productName.length,
              ),
            ),
          ],
        ));
  }
}

Widget car(category, quantity, img) {
  return Container(
    height: 110,
    width: 220,
    child: Card(
      //  Column(

      //   children:[
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 22, 3, 0),
            child: Container(width: 50, height: 50, child: Image(image: NetworkImage(img))),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(55, 10, 0, 4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(63, 3, 0, 5),
              child: Text(quantity,
                  style: TextStyle(fontSize: 18, color: Colors.purple)),
            )
          ])
        ],
      ),

      // ]
      // ),
    ),
  );
}
