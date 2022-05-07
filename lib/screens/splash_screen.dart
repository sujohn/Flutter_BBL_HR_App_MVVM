import 'dart:async';

import 'package:bbl_hr_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context) {
      return HomeScreen();
    })));
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold (
        body: Stack (
          children: [
            Center(
              child: Text('BBL HR App', style: TextStyle(color: Colors.blueAccent, fontSize: 30),),
            )
          ],
        ),
      ),
    );
    
  }
}