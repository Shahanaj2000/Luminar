import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luminar/griddemo.dart';
import 'package:luminar/login_with_validation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ),);
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    
    super.initState();

    Timer(const Duration(seconds: 2), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mygrid()));
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage("https://designimages.appypie.com/appbackground/appbackground-26-outdoors-nature.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

              //Adding Images
              Image.asset("assets/images/food.png",height: 200, width: 200,),
              

              //const Image(image: AssetImage("assets/images/food.png")),
              const Text (
                "FOOD",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}