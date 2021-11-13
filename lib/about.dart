import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue[400],
            height: MediaQuery.of(context).size.height * 0.42,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  'assets/email2.png',
                  height: 200,
                  width: 200,
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Drop line about us',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.58,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
                size: 30,
              ),
              Center(
                child: Container(
                  child: Expanded(
                    child: Text(
                      '267 Julian Moterway, Lalukheat, Karachi   ',
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ),
              Text(
                'Open Map',
                style: TextStyle(
                    fontSize: 16,
                   
                    color: Colors.blue),
              ),
              Icon(Icons.phone_android_rounded, color: Colors.red, size: 30),
              Text("0900-78601"),
              Icon(Icons.watch_later_outlined, color: Colors.red, size: 30),
              Text("Monday-Friday"),
              Text("09:00-17:00"),

            ]),
          )
        ],
      ),
    );
  }
}
