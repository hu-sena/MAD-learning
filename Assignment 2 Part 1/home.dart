import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout/grid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    // TextStyle(
    //     color: Colors.grey, backgroundColor: Colors.redAccent, fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Home"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 500,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            color: Colors.white,
            //padding: EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "My Home",
                  ),
                ),
                Container(
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      child: Text(
                    "ALL",
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid),
                  )),
                  Container(
                    margin: EdgeInsets.only(left: 325),
                    child: Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              )),
          Container(
            height: 650,
            width: 400,
            margin: EdgeInsets.all(10),
            child: GridClass(),
          ),
          Container()
        ],
      ),
    );
  }
}
