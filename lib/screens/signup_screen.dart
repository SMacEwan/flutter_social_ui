import 'package:flutter/material.dart';
import 'package:flutter_social_ui/screens/home_screen.dart';
import 'package:flutter_social_ui/screens/login_screen.dart';
import 'package:flutter_social_ui/widgets/curve_clipper.dart';

import '../constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: CurveClipper(),
                child: Image(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                  image: AssetImage('assets/images/post13.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SPOOK',
                    style: kMainLabelTextStyle1,
                  ),
                  Text(
                    'BOOK',
                    style: kMainLabelTextStyle2,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  'REGISTRATION',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[800], width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[500], width: 1.0),
                      ),
                      labelText: '   Input your name   ',
                      labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(Icons.person_outline, size: 30.0)),
                  // validator: (val) {
                  //   if(val.length==0) {
                  //     return "Email cannot be empty";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[800], width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[500], width: 1.0),
                      ),
                      labelText: '   Input your email address   ',
                      labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(Icons.email, size: 30.0)),
                  // validator: (val) {
                  //   if(val.length==0) {
                  //     return "Email cannot be empty";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[800], width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.teal[500], width: 1.0),
                      ),
                      labelText: '   Input new password   ',
                      labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(Icons.security, size: 30.0)),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  alignment: Alignment.center,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  alignment: Alignment.center,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    'Back to Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      //Segue to Registration Screen...
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(30.0),
                        //   topRight: Radius.circular(30.0),
                        // ),
                      ),
                      alignment: Alignment.center,
                      height: 80.0,
                      child: Text(
                        'Get help to Sign Up to SpookBook!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
