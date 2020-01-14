import 'package:fishing_app/index.dart';
import 'package:fishing_app/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              loginCard(context),
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
  
    Widget loginCard(BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: screenHeight / 4),
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
                        "Login",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {},
                          child: Text("Forgot Password ?"),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        FlatButton(
                          child: Text("Login"),
                          color: Color(0xFF4B9DFE),
                          textColor: Colors.white,
                          padding: EdgeInsets.only(
                              left: 38, right: 38, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => IndexHome()),
              );
                          },
                        )
                      ],
                    )
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
                "Don't have an account ?",
                style: TextStyle(color: Colors.grey),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
                },
                textColor: Colors.black87,
                child: Text("Create Account"),
              )
            ],
          )
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