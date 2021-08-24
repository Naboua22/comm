import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "assets/images/sites.jpg",
    "assets/images/transactions.jpg",
    "assets/images/pointfinance.png",
    "assets/images/endday.jpg",
  ];

  List<String> titres = [
    "Mes Sites",
    "Mes Transactions",
    "Points Financiers",
    "Clôturer une Journée"
  ];

  List categories = [
    {
      "title": "Mes Sites",
      "image": "assets/images/sites.jpg",
    },
    {
      "title": "Mes Transactions",
      "image": "assets/images/transactions.jpg",
    },
    {
      "title": "Points Financiers",
      "image": "assets/images/pointfinance.png",
    },
    {
      "title": "Clôturer une Journée",
      "image": "assets/images/endday.jpg",
    },
  ];

  Widget customcard(String catName, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  catName,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "GESTION ET SUIVI DES MARCHANDS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return customcard(
                  categories[index]['title'],
                  categories[index]['image'],
                );
              },
            ),

          ),
        ],
      ),
    );
  }
}
