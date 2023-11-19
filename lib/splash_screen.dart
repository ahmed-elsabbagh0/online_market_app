import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:market/authentication/login.dart';
import 'package:market/widgets/bottom_navigation_bar.dart';



class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{


  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {
      if (FirebaseAuth.instance.currentUser != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const BottomNavBar()));
      }
      else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const LoginScreen()));
      }
    });
  }


  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white70,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("assets/images/market.png"),
              ),

              const SizedBox(height: 10,),

              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Order Food Online ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    letterSpacing: 3,
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
