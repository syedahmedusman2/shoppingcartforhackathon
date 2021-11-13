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
    'Black T-Shirt',
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
    'assets/tshirt.png',
    'assets/blueJeans.png',
    'assets/jogger.png',
    'assets/checkshirt.jpg',
    'assets/cargopant.png',
    'assets/jeans.jpg',
    'assets/image7.png',
    'assets/images1.png',
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
                  car("Shirts", "18 Pieces left", 'https://cdn.shopify.com/s/files/1/0017/2100/8243/products/SFX-1_BLACK_REDPLAID_DL_ed5de0d8-b837-4c18-9502-4b916b54f1dc_2000x.jpg?v=1604005597'),
                  car("T-Shirts", "9 Pieces left", 'https://i.pinimg.com/originals/62/98/b0/6298b026a65cf80bcf9dce061e9b79c9.png'),
                  car("Joggers", "0 Pieces left",'https://www.kindpng.com/picc/m/10-108850_jogger-shoes-png-download-image-red-chief-sport.png'),
                  car("Jeans", "3 Pieces left", 'https://i.pinimg.com/originals/8f/f4/4b/8ff44bf7f5a38dcd46e3d355706e302b.jpg'),
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
                              image: AssetImage(productImage[index]),
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
                  style: TextStyle(fontSize: 18, color: Colors.indigo[900])),
            )
          ])
        ],
      ),

      // ]
      // ),
    ),
  );
}
