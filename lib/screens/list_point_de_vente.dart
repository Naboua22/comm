import 'package:flutter/material.dart';

class Operte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('PAHOU'),
            onTap: () {},
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
