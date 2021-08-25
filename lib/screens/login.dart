import 'package:flutter/material.dart';
import 'package:comm/screens/home.dart';
import 'package:comm/screens/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Widget identifyField = new TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person_pin_outlined),
        labelText: 'Identifiant',
        hintText: 'Entrez  votre Identifiant',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    Widget passwordField = TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      onChanged: (String onValue) {
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        labelText: 'Mot de Passe',
        hintText: 'Entrez  Mot de passe',
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
            ),
            child: new Column(
              children: <Widget>[
                Image.asset('assets/images/logo.png'),
                identifyField,
                SizedBox(
                  height: 20.0,
                ),
                passwordField,
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  child: Container(
                    child: Text(
                      "Se Connecter",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    height: 40.0,
                    margin: EdgeInsets.all(10.0),
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
                            builder: (context) => Accueil()
                          ));
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    child: Text(
                      "S'enrégistrer",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    margin: EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Register()
                          ));
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
