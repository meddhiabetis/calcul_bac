import 'package:calcul_bac/Sec_eco_p.dart';
import 'package:calcul_bac/Sec_info_p.dart';
import 'package:calcul_bac/Sec_lettre_p.dart';
import 'package:calcul_bac/Sec_math_p.dart';
import 'package:calcul_bac/Sec_science_p.dart';
import 'package:calcul_bac/Sec_sport_p.dart';
import 'package:calcul_bac/Sec_technique_p.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalculBac',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.tealAccent[700],
            title: Text(
              'Calcul Bac',
              style: TextStyle(fontFamily: 'Pacifico'),
              textAlign: TextAlign.center,
            )),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecMath()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "MATHEMATIQUE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION SCIENCE//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecScience()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "SCIENCE EXPERIMENTALE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION TECH//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecTech()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "TECHNIQUE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION ECO//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecEco()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "ECONOMIE GESTION",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION LETTRE//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecLettre()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "LETTRE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION INFO//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecInfo()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "INFORMATIQUE",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //////////////////////////////////////////////////////////////////
              ///SECTION SPORT//////////////////////////////////////
              ////////////////////////////////////////////////
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecSport()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "SPORT",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.yellow[100]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton.icon(
                      color: Colors.purple[100],
                      onPressed: () {
                        _openurlinst();
                      },
                      icon: Icon(Icons.person),
                      label: Text('Instagram',
                          style:
                              TextStyle(decoration: TextDecoration.underline)))
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton.icon(
                      color: Colors.deepOrange[100],
                      onPressed: () {
                        _openurlmail();
                      },
                      icon: Icon(Icons.person),
                      label: Text('Mail',
                          style:
                              TextStyle(decoration: TextDecoration.underline)))
                ],
              ),
            ],
          )),
        ));
  }
}

_openurlmail() async {
  const url = 'mailto:meddhiabetis19@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_openurlinst() async {
  const url = 'https://www.instagram.com/med.dhia.betis/?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
