import 'dart:convert';

import 'package:facebook/facebook/partoffacebook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Facebook> facebook = [];
  String url = "https://run.mocky.io/v3/dc913375-2ca1-4eb0-8177-062a4c803667";
  Future? objfuture;
  Future<model_facebook> apiCall() async {
    model_facebook? objfacebook;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objfacebook = model_facebook.fromJson(data);
      //  print(response.body);
      setState(() {
        for (int i = 0; i < objfacebook!.facebook!.length; i++) {
          facebook.add(objfacebook.facebook![i]);
        }
      });
    }
    return objfacebook!;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objfuture = apiCall();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 5,top: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,top: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(
                  Icons.chat,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/nivin.jpg",
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "what's on your mind?",
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(
                  height: 40,
                  // color: Colors.amber,
                  //  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          label: Text("Live")),
                      VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.perm_media_outlined,
                            color: Colors.green,
                          ),
                          label: Text("Photo")),
                      VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.purple,
                          ),
                          label: Text("Room")),
                      VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 5,
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: OutlinedButton.icon(
                              clipBehavior: Clip.antiAlias,
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call,
                                color: Colors.purple,
                              ),
                              label: Text(
                                "Create\nRoom",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/asif.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/peppe.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/nivin.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/prithiraj.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/asif.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/dq.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/peppe.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/nivin.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/peppe.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/nivin.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/prithiraj.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/asif.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/dq.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/peppe.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/nivin.jpg",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 1.0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 6,
                  color: Colors.grey,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/nivin.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        shape: BoxShape.circle),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.blueAccent,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Add To Story",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/wedding.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/peppe.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Antony Varghese",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/ishq.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),

                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/asif.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Asif Ali",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/hridayam.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),

                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/dq.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Dhulker Salman",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/thalapathy.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),

                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/prithiraj.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Prithiraj",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/dileep.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),

                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/dileep.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Dileep",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                          Container(
//alignment: Alignment.topLeft,
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                              //color: Colors.purple,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/hridayam.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),

                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/asif.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Asif Ali",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 6,
                  color: Colors.grey,
                ),
                Container(
                  height: 600,
                  child: ListView.builder(
                      itemCount: facebook.length,
                      itemBuilder: (c, i) {
                        return Card(
                          child: Container(
                            // width: 40
                         //  height: 700,
                            padding: EdgeInsets.all(10),
                            // color: Colors.blueAccent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          //  color: Colors.greenAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.blue,
                                              width: 2)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/mammootty.jpg",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      facebook[i].name!,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 200,
                                    ),
                                    Icon(Icons.more_horiz),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.close),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(facebook[i].caption!),
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "assets/images/mammootty.jpg",
                                  fit: BoxFit.cover,
                                  height: 350,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlatButton.icon(
                                        splashColor: Colors.blueAccent,
                                        focusColor: Colors.blueAccent,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.thumb_up_alt_outlined),
                                        label: Text("Like")),
                                    FlatButton.icon(
                                        onPressed: () {},
                                        icon: Icon(Icons.comment),
                                        label: Text("Comment")),
                                    FlatButton.icon(
                                        onPressed: () {},
                                        icon: Icon(FontAwesomeIcons.share),
                                        label: Text("Send")),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
