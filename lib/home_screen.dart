import 'package:flutter/material.dart';
import 'package:fluid_kit/fluid_kit.dart';
import 'package:pasmod/toko.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  'Toko',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => toko()),
                  );
                }),
            ListTile(
                leading: Icon(Icons.shop_rounded),
                title: Text(
                  'Tokoku',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => toko()),
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
                            height: 200,
                            color: Colors.white,
                            width: 400,
                            margin: EdgeInsets.only(
                                top: 40, left: 15, right: 15, bottom: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    'HOT NEWS',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                  margin: EdgeInsets.only(top: 15, bottom: 20),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 100,
                                      color: Colors.amber,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 100,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Fluidable(
                          fluid: 2,
                          minWidth: 200,
                          child: Container(
                            height: 200,
                            color: Colors.white,
                            width: 400,
                            margin: EdgeInsets.only(
                                top: 40, left: 15, right: 15, bottom: 10),
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
