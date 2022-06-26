import 'package:flutter/material.dart';
import 'package:fluid_kit/fluid_kit.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controllerSearch = TextEditingController();
  Widget? searchTextField = Text("Pencarian");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
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
