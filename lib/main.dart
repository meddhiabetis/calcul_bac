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
      debugShowCheckedModeBanner: false,
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

var appBarColor = Colors.tealAccent[700];
var backgroundColour = Colors.grey[850];
var buttonColour = Colors.yellow[800];
var appBarTextStyle = TextStyle(fontFamily: 'Pacifico'); // sauf sec sc et eco
var fillColor = Colors.grey[800];
var inputTextColor = Colors.amber[50];

///TO DO
var labelText = Colors.grey[400];

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColour,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: appBarColor,
            title: Text(
              'Calcul Bac',
              style: appBarTextStyle,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
                      color: buttonColour,
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
            ],
          )),
        ),
        drawer: Drawer(
          child: Container(
            color: backgroundColour,
            child: ListView(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
              children: <Widget>[
                RaisedButton.icon(
                  label: Text('Light Theme'),
                  color: Colors.white,
                  icon: Icon(Icons.wb_sunny_rounded),
                  onPressed: () {
                    appBarColor = Colors.greenAccent[400];
                    backgroundColour = Colors.amber[50];
                    buttonColour = Colors.lightBlueAccent;
                    fillColor = Colors.amber[50];
                    inputTextColor = Colors.grey[900];
                    setState(
                      () {},
                    );
                  },
                ),
                SizedBox(height: 25),
                RaisedButton.icon(
                  color: Colors.grey[850],
                  label: Text(
                    'Dark Theme',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.nightlight_round,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    appBarColor = Colors.tealAccent[700];
                    backgroundColour = Colors.grey[850];
                    buttonColour = Colors.yellow[800];
                    fillColor = Colors.grey[800];
                    inputTextColor = Colors.amber[50];
                    setState(
                      () {},
                    );
                  },
                ),
                SizedBox(height: 300),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedButton.icon(
                        color: Colors.greenAccent,
                        onPressed: () {
                          _openurlsujets();
                        },
                        icon: Icon(Icons.toc_rounded),
                        label: Text('Sujets Bac+Corrigé',
                            style: TextStyle(
                                decoration: TextDecoration.underline)))
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedButton.icon(
                        color: Colors.tealAccent[700],
                        onPressed: () {
                          _openurlorio();
                        },
                        icon: Icon(Icons.school_sharp),
                        label: Text('orientation universitaire',
                            style: TextStyle(
                                decoration: TextDecoration.underline)))
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton.icon(
                        color: Colors.deepOrange[100],
                        onPressed: () {
                          _openurlmail();
                        },
                        icon: Icon(Icons.contact_mail_rounded),
                        label: Text('Mail',
                            style: TextStyle(
                                decoration: TextDecoration.underline)))
                  ],
                ),
                SizedBox(height: 2002),
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
                            style: TextStyle(
                                decoration: TextDecoration.underline)))
                  ],
                ),
              ],
            ),
          ),
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

_openurlorio() async {
  const url = 'http://www.guide-orientation.rnu.tn/fr/dynamique/index_fr.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_openurlsujets() async {
  const url = 'http://www.bacweb.tn/section.htm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
