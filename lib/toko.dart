import 'package:flutter/material.dart';
import 'package:fluid_kit/fluid_kit.dart';
import 'package:pasmod/home_screen.dart';

class toko extends StatelessWidget {
  const toko({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko'),
      ),
      drawer: Drawer(
        width: 150,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              width: 100,
              child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'MENU',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
                child: Container(
                  child: Fluid(
                    children: [
                      Fluidable(
                          fluid: 1,
                          minWidth: 100,
                          child: Container(
                            height: 300,
                            color: Colors.white,
                            width: 430,
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    'NAMA TOKO',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(top: 15, bottom: 20),
                                ),
                              ],
                            ),
                          )),
                      Fluidable(
                          fluid: 2,
                          minWidth: 200,
                          child: Container(
                            height: 100,
                            color: Colors.red,
                            width: 430,
                            margin: EdgeInsets.only(top: 0, bottom: 10),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
