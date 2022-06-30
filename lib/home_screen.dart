import 'package:flutter/material.dart';
import 'package:fluid_kit/fluid_kit.dart';
import 'package:pasmod/toko.dart';
import 'package:pasmod/tokoku_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color.fromARGB(255, 168, 181, 69),
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        centerTitle: true,
        title: Text(
          'PASMOD Batu',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 30,
            child: Image.asset('assets/logo.png'),
          )
        ],
        backgroundColor: Color.fromARGB(255, 168, 181, 69),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 166),
        width: 150,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 65,
              width: 100,
              child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 181, 69),
                  ),
                  child: Text(
                    'MENU',
                    style: TextStyle(fontSize: 22, color: Colors.white),
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
                    MaterialPageRoute(builder: (context) => Tokoku()),
                  );
                }),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 0),
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 168, 181, 69),
                    Color.fromARGB(255, 168, 181, 69),
                    Color.fromARGB(255, 220, 231, 117),
                    Color.fromARGB(255, 220, 231, 117),
                    Color.fromARGB(255, 202, 191, 69),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                child: Fluid(
                  children: [
                    Fluidable(
                        fluid: 1,
                        minWidth: 100,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          height: 200,
                          width: 400,
                          margin: EdgeInsets.only(
                              top: 40, left: 15, right: 15, bottom: 10),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'HOT NEWS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 168, 181, 69),
                                  ),
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 202, 191, 69),
                                        border: Border.all(
                                            width: 1, color: Colors.white)),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                        border: Border.all(
                                            width: 1, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Fluidable(
                        fluid: 1,
                        minWidth: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          height: 500,
                          width: 400,
                          margin: EdgeInsets.only(
                              top: 40, left: 15, right: 15, bottom: 10),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
