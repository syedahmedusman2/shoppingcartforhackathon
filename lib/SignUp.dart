import 'package:flutter/material.dart';
import 'package:shoppingcartforhackathon/Login.dart';
import 'package:shoppingcartforhackathon/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.orange[900],),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Sign Up', style: TextStyle(color: Colors.orange[900]),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
      
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(child: Center(child: Image.asset('assets/ecom.gif')))
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(13.0),
                    border: InputBorder.none,
                    hintText: 'Email',
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(13.0),
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
           OutlinedButton.icon(
        icon: Icon(Icons.app_registration_rounded, color: col),
        label: Text("Sign Up", style: TextStyle(color: col, fontSize: 20),),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
        
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: col),
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
      SizedBox(height: 17,),
      InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Already have an account? Login.",
                  style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.bold,
                      color: col,
                      fontFamily: "Regular"),
                ),
              ),
              SizedBox(height: 15,)
          ],
        ),
      ),
      
    );
  }
}