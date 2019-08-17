import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resenhando/web.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  _updateText();
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "imagens/lapis.jpeg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Container(
          padding: new EdgeInsets.only(top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                type: MaterialType.transparency,
                child: Text("RESENHANDO",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
              ),
            ],
          ),
        ),
        Container(
          padding: new EdgeInsets.only(top: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                type: MaterialType.transparency,
                child: Text("Manual de elaboração de resenha crítica",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0)),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: FlatButton(
                      onPressed: null,
                      child: Stack(children: <Widget>[
                        Image.asset(
                          'imagens/bloco.png',
                          height: 105,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 8),
                          child: Text("???????????",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Stack(children: <Widget>[
                      FlatButton(
                          onPressed: null,
                          child: Stack(children: <Widget>[
                            Image.asset(
                              'imagens/bloco.png',
                              height: 105,
                              width: 105,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0, left: 8),
                              child: Text("Interpretar",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11.0)),
                            ),
                          ])),
                    ])),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: FlatButton(
                      onPressed: null,
                      child: Stack(children: <Widget>[
                        Image.asset(
                          'imagens/bloco.png',
                          height: 105,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 8),
                          child: Text("Resumir",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: FlatButton(
                      onPressed: null,
                      child: Stack(children: <Widget>[
                        Image.asset(
                          'imagens/bloco.png',
                          height: 105,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 8),
                          child: Text("Intertextualizar",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: FlatButton(
                      onPressed: null,
                      child: Stack(children: <Widget>[
                        Image.asset(
                          'imagens/bloco.png',
                          height: 105,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 8),
                          child: Text("Argumentar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.0,
                              )),
                        ),
                      ])),
                ),
              ],
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
                child: Text("Dicas de Português",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpScreen()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)))),
      ],
    );
}}

void _updateText() async {
  const request = "https://raw.githubusercontent.com/gerverson/Resenhando/master/Textos/";

  String key = "Dicas.html";

  http.Response response = await http.get(request+key);


  final prefs = await SharedPreferences.getInstance ();

  prefs.setString ('my_string_key', response.body);

  String myString = prefs.getString ('my_string_key') ?? '';

  //_saveData(key);

//  _readData(key).then((data) {
//     // _toDoList = json.decode(data);
//    print(data);
//  });

  print(myString);
}
//
//Future<File> _getFile(String data) async {
//  final directory = await getApplicationDocumentsDirectory();
//  return File("${directory.path}/"+data);
//}
//
//Future<File> _saveData(String data) async {
//  String data = "sdsdffsdfs";
//
//  final file = await _getFile(data);
//  return file.writeAsString(data);
//}
//
//Future<String> _readData(String data) async {
//  try {
//    final file = await _getFile(data);
//
//    return file.readAsString();
//  } catch (e) {
//    return null;
//  }
//}
