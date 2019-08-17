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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpScreen(data: 'Estrutura.html')),
                        );
                      },
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HelpScreen(data: 'Interpretar.html')),
                            );
                          },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpScreen(data: 'Resumir.html')),
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpScreen(data: 'Intertextualizar.html')),
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpScreen(data: 'Argumentar.html')),
                        );
                      },
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
                    MaterialPageRoute(builder: (context) => HelpScreen(data: 'Dicas.html')),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)))),
      ],
    );
}}

void _updateText() async {
  const request = "https://raw.githubusercontent.com/gerverson/Resenhando/master/Textos/";

  String key1 = "Dicas.html";
  String key2 = "Estrutura.html";
  String key3 = "Interpretar.html";
  String key4 = "Resumir.html";
  String key5 = "Intertextualizar.html";
  String key6 = "Argumentar.html";

  http.Response response1 = await http.get(request+key1);
  http.Response response2 = await http.get(request+key2);
  http.Response response3 = await http.get(request+key3);
  http.Response response4 = await http.get(request+key4);
  http.Response response5 = await http.get(request+key5);
  http.Response response6 = await http.get(request+key6);


  final prefs = await SharedPreferences.getInstance ();

  prefs.setString (key1, response1.body);
  prefs.setString (key2, response2.body);
  prefs.setString (key3, response3.body);
  prefs.setString (key4, response4.body);
  prefs.setString (key5, response5.body);
  prefs.setString (key6, response6.body);

}
