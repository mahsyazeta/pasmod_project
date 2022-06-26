import 'package:flutter/material.dart';
import 'package:fluid_kit/fluid_kit.dart';

class toko extends StatelessWidget {
  const toko({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(' ')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.black26,
                child: Column(children: [
                  Container(
                    width: 500,
                    color: Colors.amber,
                    height: 400,
                    margin: EdgeInsets.only(top: 20, bottom: 0),
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.blue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 150,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 150,
                        height: 100,
                        color: Colors.red,
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 0,
              ),
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
