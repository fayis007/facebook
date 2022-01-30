import 'package:facebook/facebook/registrationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newfacebookaccount extends StatefulWidget {
  const newfacebookaccount({Key? key}) : super(key: key);

  @override
  _newfacebookaccountState createState() => _newfacebookaccountState();
}

class _newfacebookaccountState extends State<newfacebookaccount> {
  final FormKey = GlobalKey<FormState>();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: FormKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "What's your name?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Enter the name you use in real life.",
              style: TextStyle(
                color: Colors.grey,
                //fontWeight: FontWeight.bold,
                // letterSpacing: 1,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Ente your first name";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(width: 6,),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Last Name"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your Last Name";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.only(left: 44, right: 44),
              child: FlatButton(
                  minWidth: 560,
                  color: Color(0xff483ad6),
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registrationpage()));
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
