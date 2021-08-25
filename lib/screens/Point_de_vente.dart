import 'package:flutter/material.dart';

class Pv extends StatefulWidget {
  @override
  _PvState createState() => _PvState();
}

class _PvState extends State<Pv> {
  @override
  Widget build(BuildContext context) {
    Widget nomField = new TextFormField(
      keyboardType: TextInputType.streetAddress,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.location_city),
        labelText: 'POINT DE VENTE',
        hintText: 'Entrez  Nom de Site',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget lieuField = TextFormField(
      keyboardType: TextInputType.streetAddress,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.add_location),
        labelText: 'LOCALISATION',
        hintText: 'Entrez le lieu du point de vente',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget mtnField = TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.sim_card),
        labelText: 'RECHARGE MTN',
        hintText: 'Entrez numero de la sim',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
    Widget mtnmomoField = TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.sim_card),
        labelText: 'MTN MOBILE MONEY',
        hintText: 'Entrez numero de la sim',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget moovField = TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.sim_card),
        labelText: 'RECHARGE MOOV',
        hintText: 'Entrez numero de la sim',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
    Widget moovmoneyField = TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.sim_card),
        labelText: 'MOOV MONEY',
        hintText: 'Entrez numero de la sim',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: new Form(
          child: Padding(
            padding: new EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
            ),
            child: new Column(
              children: <Widget>[
                nomField,
                SizedBox(
                  height: 20.0,
                ),
                lieuField,
                SizedBox(
                  height: 20.0,
                ),
                mtnField,
                SizedBox(
                  height: 20.0,
                ),
                mtnmomoField,
                SizedBox(
                  height: 20.0,
                ),
                moovField,
                SizedBox(
                  height: 20.0,
                ),
                moovmoneyField,
                GestureDetector(
                  child: Container(
                    child: Text(
                      "Enrégistrer",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    height: 40.0,
                    margin: EdgeInsets.all(50.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
