import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/homepage.dart';
class CustomSearchBarDemo extends StatefulWidget {
  @override
  _CustomSearchBarDemoState createState() => _CustomSearchBarDemoState();
}

class _CustomSearchBarDemoState extends State<CustomSearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        
         child: Container(
           margin: EdgeInsets.only(top: 3),
           height: 90,
          padding: const EdgeInsets.only(top:20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),   
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Material(
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));}, icon: Icon(Icons.cancel_outlined, color: Colors.grey,)),
                  Expanded(
                    child: TextField(
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: ' Search by name or address',
                      ),
                      onChanged: (value) {

                      },
                    ),
                  ),
                  InkWell(
                    child: Icon(Icons.search, color: Colors.grey,),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          )
        ) ,
      ),

    );
  }
}