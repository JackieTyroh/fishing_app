import 'package:fishing_app/index.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  double screenHeight;
  
    @override
    Widget build(BuildContext context) {
      screenHeight = MediaQuery.of(context).size.height;
      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              lowerHalf(context),
              upperHalf(context),
              pageTitle(),
              singUpCard(context),
            ],
          ),
        ),
      );
    }
Widget pageTitle() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 48,
              color: Colors.white,
            ),
            Text(
              "MFIS",
              style: TextStyle(
                  fontSize: 34, color: Colors.white, fontWeight: FontWeight.w400),
            )
          ],
        ),
      );
    }
  Widget singUpCard(BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: screenHeight / 5),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Your Name", hasFloatingPlaceholder: true),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Your Email", hasFloatingPlaceholder: true),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password", hasFloatingPlaceholder: true),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password must be at least 8 characters and include a special character and number",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(),
                        ),
                        FlatButton(
                          child: Text("Sign Up"),
                          color: Color(0xFF4B9DFE),
                          textColor: Colors.white,
                          padding: EdgeInsets.only(
                              left: 38, right: 38, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndexHome()),
              );
                },
                textColor: Colors.black87,
                child: Text("Login"),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              child: Text(
                "Terms & Conditions",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      );
    }
  
    Widget upperHalf(BuildContext context) {
      return Container(
        height: screenHeight / 2,
        child: Image.asset(
          'assets/house.jpg',
          fit: BoxFit.cover,
        ),
      );
    }
  
    Widget lowerHalf(BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: screenHeight / 2,
          color: Color(0xFFECF0F3),
        ),
      );
    }

}