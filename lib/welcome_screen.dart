import 'package:flutter/material.dart';

import './home_screen_pembeli.dart';
import './home_screen_penjual.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Container(
              child: Column(
                children: [
                   Text(
                'pmd',
                style: TextStyle(
                  fontSize: 80, 
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'PASAR MODERN',
                style: TextStyle(
                  fontSize: 20, 
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: 
                          (context)=>HomeScreenPembeli()
                        )
                      );
                    },
                     child: Text('Pembeli'),
                    ),
                     ElevatedButton(onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: 
                          (context)=>HomeScreenPenjual()
                        )
                      );
                    },
                     child: Text('Penjual'),
                    ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }

  
}