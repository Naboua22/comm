import 'package:comm/screens/operation.dart';
import 'package:flutter/material.dart';

class Operte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMM'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('PAHOU'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Operation(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('VEDOKO'),
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('AKPAKPA'),
          ),
        ],
      ),
    );
  }
}
