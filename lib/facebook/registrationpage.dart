import 'package:facebook/facebook/home.dart';
import 'package:facebook/facebook/newfacebookaccount.dart';
import 'package:flutter/material.dart';

class registrationpage extends StatefulWidget {
  const registrationpage({Key? key}) : super(key: key);

  @override
  _registrationpageState createState() => _registrationpageState();
}

class _registrationpageState extends State<registrationpage> {
  final FormKey = GlobalKey<FormState>();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  "assets/images/facebooklogin.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                  text: TextSpan(children: const [
                TextSpan(
                  text: "മലയാളം    ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text: "Espanol    ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text: "More...  ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ])),
              SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Form(
                  key: FormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone or email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter correct input";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return "Please Enter 6 characters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: FlatButton(
                            minWidth: 600,
                            color: Color(0xff483ad6),
                            onPressed: () {

                              if (FormKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                              }
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      SizedBox(height: 24),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color(0xff483ad6),
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 38),
                      Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              child: Divider(
                                color: Colors.black45,
                                height: 50,
                              )),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Divider(
                                color: Colors.black45,
                                height: 50,
                              )),
                        ),
                      ]),
                      SizedBox(height: 38),
                      FlatButton(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>newfacebookaccount()));
                          },
                          child: Text(
                            "Create new Facebook account",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
