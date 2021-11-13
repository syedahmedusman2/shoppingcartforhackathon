

import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/SignUp.dart';
import 'package:shoppingcartforhackathon/homepage.dart';

Color col = Colors.black;

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String password = '123456';
  TextEditingController passwordController = TextEditingController();
  validation()async{
    if(passwordController.text==password){
     await Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
    }
    else{
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Wrong Password"),
            content: Text("Please try again"),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Login', style: TextStyle(color: Colors.orange[900]),),
      ),
      body: Column(
        children: <Widget>[
// Image.network('data:image/png;base64,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')
          Padding(
            padding: const EdgeInsets.all(17),
            child: Container(child: Center(child: Image.asset('assets/ecom.gif')
            ,)
            ),
            ),
            
          
    
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: col,
                      width: 1.0,
                    ),
               borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.of(context).size.width*0.53,
              child: TextField(
                
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(13.0),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: col,
                    
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: col,
                      width: 1.0,
                    ),
               borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.of(context).size.width*0.53,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(13.0),
                  border: InputBorder.none,
                  hintText: 'Password', hintStyle: TextStyle(color: col),
                  
                ),
              ),
            ),
          ),
         OutlinedButton.icon(
  icon: Icon(Icons.login, color: col),
  label: Text("Login", style: TextStyle(color:col, fontSize: 20),),
  onPressed: (){
    validation();
    
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  },
  
  style: ElevatedButton.styleFrom(
    side: BorderSide(width: 2.0, color: col),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
    ),
  ),
),
SizedBox(height: 20,),
InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                "Not have an account? Register.",
                style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                    color: col,
                    fontFamily: "Regular"),
              ),
            )
        ],
      ),
      
    );
  }
}