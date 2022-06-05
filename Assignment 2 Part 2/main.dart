import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Living Room',
                ),
                Tab(
                  icon: Icon(Icons.airline_seat_individual_suite_rounded),
                  text: 'Bedroom',
                ),
              ],
            ),
            title: const Text('Home'),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Home(),
              ),
              Center(
                child: Bedroom(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

// initialize to OFF
var fan = 0, light = 0, aircond = 0, TV = 0;
bool value_01 = true;
bool value_02 = true;
bool value_03 = true;
bool value_04 = true;

class HomeState extends State<Home> {
  void iconPressedAircond() {
    setState(() {
      aircond = aircond + 1;
      value_03 = false;
      print('aircon button pressed $aircond');
    });
  }

  void iconPressedTV() {
    setState(() {
      TV = TV + 1;
      value_04 = false;
      print('TV button pressed $TV');
    });
  }

  var actionsTaken = ['OFF', 'ON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(value_03
                                  ? 'assets/aircond off.png'
                                  : 'assets/aircond on.png'),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 100,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 45),
                              onPressed: (iconPressedAircond),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " AIRCOND",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(aircond),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(value_04
                                  ? 'assets/tv off.png'
                                  : 'assets/tv on.png'),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 100,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 45),
                              onPressed: iconPressedTV,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " TV",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(TV),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class Bedroom extends StatefulWidget {
  const Bedroom({Key? key}) : super(key: key);

  @override
  BedroomState createState() => BedroomState();
}

class BedroomState extends State<Bedroom> {
  void iconPressedFan() {
    setState(() {
      fan = fan + 1;
      value_01 = false;
      print('fan button pressed $fan');
    });
  }

  void iconPressedLight() {
    setState(() {
      light = light + 1;
      value_02 = false;
      print('light button pressed $light');
    });
  }

  var actionsTaken = ['OFF', 'ON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Image(
                              image: AssetImage(value_01
                                  ? 'assets/fan-off.png'
                                  : 'assets/fan-on.png'),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 100,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 45),
                              onPressed: iconPressedFan,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " FAN",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(fan),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Image(
                              image: AssetImage(value_02
                                  ? 'assets/light-off.png'
                                  : 'assets/light-on.png'),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 100,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 45),
                              onPressed: iconPressedLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " LIGHT",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(light),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
