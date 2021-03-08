import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MistateFull(),
    debugShowCheckedModeBanner: false,
  ));
}

class MistateFull extends StatefulWidget {
  @override
  _MistateFullState createState() => _MistateFullState();
}

class _MistateFullState extends State<MistateFull> {
  String flutterText = "";
  int index = 0;
  List<String> collections = [
    'aprendiendo',
    'aplicaciones ',
    'hibridas',
    'con',
    'flutter',
    'Palabra3',
    'Palabra4',
    'Palabra5',
    'Palabra6'
  ];

  void onPressButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 9 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 50.0),
              ),
              RaisedButton(
                onPressed: onPressButton,
                child: Text(
                  "Actualizar",
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
