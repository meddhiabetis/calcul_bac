import 'package:calcul_bac/main.dart';
import 'package:flutter/material.dart';

class SecTech extends StatefulWidget {
  SecTech({Key key}) : super(key: key);

  @override
  _SecTechState createState() => _SecTechState();
}

class _SecTechState extends State<SecTech> {
  static double math = 0;
  static double phy = 0;
  static double tech = 0;
  static double tptech = 0;
  static double inf = 0;
  static double ang = 0;
  static double fr = 0;
  static double ar = 0;
  static double phi = 0;
  static double opt = 0;
  static double sprt = 0;
  static double moy = 0;
  static double mo = 0;
  static double sco = 0;
  static double score = 0;

  void doCalc(math, phy, tech, tptech, inf, ang, fr, ar, phi, opt, sprt) {
    setState(() {
      if (opt > 10) {
        mo = (math * 3 +
                phy * 3 +
                tech * 3 +
                tptech +
                inf +
                ang +
                fr +
                ar +
                phi +
                (opt - 10) +
                sprt) /
            16;
      } else
        mo = (math * 3 +
                phy * 3 +
                tech * 3 +
                tptech +
                inf +
                ang +
                fr +
                ar +
                phi +
                sprt) /
            16;

      moy = double.parse((mo).toStringAsFixed(2));
      sco = 4 * moy + 1.5 * math + 1.5 * tech + phy + ang + fr;
      score = double.parse((sco).toStringAsFixed(2));
    });
  }

  Widget _mathIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Math',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double math = double.tryParse(value);

        if (math == null || math > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        math = double.tryParse(value);
      },
    );
  }

  Widget _phyIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Physique',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double phy = double.tryParse(value);

        if (phy == null || phy > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        phy = double.tryParse(value);
      },
    );
  }

  Widget _tptechIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'TP Technique',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double tptech = double.tryParse(value);

        if (tptech == null || tptech > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        tptech = double.tryParse(value);
      },
    );
  }

  Widget _infIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Informatique',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double inf = double.tryParse(value);

        if (inf == null || inf > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        inf = double.tryParse(value);
      },
    );
  }

  Widget _techIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Technologie',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double tech = double.tryParse(value);

        if (tech == null || tech > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        tech = double.tryParse(value);
      },
    );
  }

  Widget _arIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Arabe',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double ar = double.tryParse(value);

        if (ar == null || ar > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        ar = double.tryParse(value);
      },
    );
  }

  Widget _frIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Français',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double fr = double.tryParse(value);

        if (fr == null || fr > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        fr = double.tryParse(value);
      },
    );
  }

  Widget _anIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Anglais',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double ang = double.tryParse(value);

        if (ang == null || ang > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        ang = double.tryParse(value);
      },
    );
  }

  Widget _phiIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Philosophie',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double phi = double.tryParse(value);

        if (phi == null || phi > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        phi = double.tryParse(value);
      },
    );
  }

  Widget _optIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Option',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double opt = double.tryParse(value);

        if (opt == null || opt > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        opt = double.tryParse(value);
      },
    );
  }

  Widget _sprtIn() {
    return TextFormField(
      style: TextStyle(color: inputTextColor),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        labelText: 'Sport',
        labelStyle: TextStyle(
            color: Colors.grey[400], fontSize: 20, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.lightBlue[900],
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(color: Colors.lightGreenAccent[700]),
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        double sprt = double.tryParse(value);

        if (sprt == null || sprt > 20) {
          return 'Invalid Input';
        }

        return null;
      },
      onSaved: (String value) {
        sprt = double.tryParse(value);
      },
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Section Technique',
          style: appBarTextStyle,
        ),
        backgroundColor: Colors.deepOrangeAccent[400],
      ),
      backgroundColor: backgroundColour,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _techIn(),
                SizedBox(
                  height: 25,
                ),
                _tptechIn(),
                SizedBox(
                  height: 25,
                ),
                _mathIn(),
                SizedBox(
                  height: 25,
                ),
                _phyIn(),
                SizedBox(
                  height: 25,
                ),
                _infIn(),
                SizedBox(
                  height: 25,
                ),
                _anIn(),
                SizedBox(
                  height: 25,
                ),
                _frIn(),
                SizedBox(
                  height: 25,
                ),
                _arIn(),
                SizedBox(
                  height: 25,
                ),
                _phiIn(),
                SizedBox(
                  height: 25,
                ),
                _sprtIn(),
                SizedBox(
                  height: 25,
                ),
                _optIn(),
                SizedBox(
                  height: 25,
                ),
                SizedBox(height: 80),
                ButtonTheme(
                    minWidth: 100,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.red[600],
                      child: Text(
                        'Calculer',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();
                        setState(() {
                          doCalc(math, phy, tech, tptech, inf, ang, fr, ar, phi,
                              opt, sprt);
                        });
                        moyAlert(context, moy, score);
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void moyAlert(BuildContext context, moy, score) {
  var alert = AlertDialog(
    backgroundColor: Colors.grey.shade800,
    titleTextStyle: TextStyle(
      color: Colors.deepOrangeAccent[400],
      fontWeight: FontWeight.w800,
      fontSize: 35,
    ),
    title: Text("Resultat : "),
    content: Text(
      "Votre moyenne est $moy \n \n Votre score est $score ",
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25),
    ),
    actions: [
      ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepOrangeAccent[400])),
        child: Text(
          "Ok",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
