import 'package:comm/screens/list_point_de_vente.dart';
import 'package:comm/screens/operation.dart';
import 'package:comm/screens/register.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  // get length => Future.value();

  @override
  _AccueilState createState() => _AccueilState();
  // _AccueilState createState() => _AccueilState(length);
}

class _AccueilState extends State<Accueil> {
  List<Map> elmts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMM'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
//        automaticallyImplyLeading: true,
      ),
      backgroundColor: CupertinoColors.white,
      body: Container(
        padding: EdgeInsets.all(5.0),
        color: Colors.white30,
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              child: Card(
                color: Colors.purpleAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    "Mes Sites",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Operte(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(
                color: Colors.purpleAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    "Mes Transactions",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Operation(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(
                color: Colors.purpleAccent,
                elevation: 5.0,
                // shape: CircleBorder(
                // ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    "Points Financiers",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Register(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(
                color: Colors.purpleAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    "Clôturer une Journée",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Register(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
