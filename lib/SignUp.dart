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
        backgroundColor: Colors.indigo[900],
        title: Text('Sign Up'),
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
        icon: Icon(Icons.app_registration_rounded, color: Colors.indigo.shade900),
        label: Text("Sign Up", style: TextStyle(color: Colors.indigo.shade900, fontSize: 20),),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
        
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 2.0, color: Colors.indigo.shade900),
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