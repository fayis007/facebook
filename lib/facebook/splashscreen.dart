import 'package:facebook/facebook/registrationpage.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetofirstpage();
  }

  _navigatetofirstpage() async {
    await Future.delayed(const Duration(milliseconds: 600), () {});
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const registrationpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            "assets/images/facebooklogo2.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
