import 'package:flutter/material.dart';
import 'package:comm/screens/home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Widget nomField = new TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Nom & Prénom Agent',
        hintText: 'Entrez  nom et prenom Agent',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget temoinField = TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'Nom & Prénom Témoin Agent',
        hintText: 'Entrez  nom et prenom Témoin Agent',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget contactField = TextFormField(
      keyboardType: TextInputType.phone,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        labelText: 'Numero de téléphone agent',
        hintText: 'Entrez  Numero de téléphone agent',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget numField = TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.keyboard),
        labelText: 'Numero de carte nationale Agent',
        hintText: 'Entrez  Numero de votre carte nationale',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget adressField = TextFormField(
      keyboardType: TextInputType.streetAddress,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.home),
        labelText: 'Adresse Agent ',
        hintText: 'Entrez la residence de votre agent',
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
                temoinField,
                SizedBox(
                  height: 20.0,
                ),
                contactField,
                SizedBox(
                  height: 20.0,
                ),
                numField,
                SizedBox(
                  height: 20.0,
                ),
                adressField,
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
                  onTap: (){
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Homepage()
                          ));
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
