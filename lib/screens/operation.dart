import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMM'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: Text('CODJOVI Michel'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('SOSSA Henry'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('COMLANVI Irené'),
          ),
        ],
      ),
    );
  }
}
