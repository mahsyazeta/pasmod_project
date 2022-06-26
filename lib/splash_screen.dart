// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                'PAMOD',
                style: TextStyle(
                  fontSize: 40, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
          ],
        ),
      ),
    );
  }
}