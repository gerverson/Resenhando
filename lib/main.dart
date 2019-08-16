import 'dart:async';

import 'package:flutter/material.dart';
import 'dicas.dart';

void main() {
  print("oi");
  runApp(MaterialApp(
    title: "Resenhando",
    home: Stack(
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
             // Text("Resenhando", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
              Material(
                type: MaterialType.transparency,
                child: Text("RESENHANDO", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0)),),
            ],
          ),
        ),
        Container(
          padding: new EdgeInsets.only(top: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text("Resenhando", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
              Material(
                type: MaterialType.transparency,
                child: Text("Manual de elaboração de resenha crítica", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.0)),),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text("Hi"),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
////                Padding(
////                  padding: const EdgeInsets.only(right: 2.0),
////                  child: FlatButton(
////                      onPressed: null, child: Image.asset('imagens/ler.png',
////                    height: 70,)),
////                ),
//                 Text("Resenhando"),
//              ],
//            ),
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
                          child: Text("???????????", style: TextStyle(color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
                // Text("Detalles"),
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
                              child: Text("Interpretar", style: TextStyle(color: Colors.black, fontSize: 11.0)),
                            ),
                          ])),
                    ])),
                // Text("Detalles"),
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
                          child: Text("Resumir", style: TextStyle(color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
                // Text("Detalles"),
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
                          child: Text("Intertextualizar", style: TextStyle(color: Colors.black, fontSize: 11.0)),
                        ),
                      ])),
                ),
                // Text("Detalles"),
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
                          child:
//                          Align(
//                            alignment: Alignment.center, // Align however you like (i.e .centerRight, centerLeft)
//                            child: Text("My Text"),
//                          ),
                          Text("Argumentar", style: TextStyle(color: Colors.black, fontSize: 11.0, )),
                        ),
                      ])),
                ),
                // Text("Detalles"),
              ],
            ),

//            Padding(
//              padding: const EdgeInsets.only(right: 300.0),
//              child: Image.asset('imagens/lapis.jpg', height: 70,)
//            ),
//            FlatButton(
//                onPressed: null, child: Image.asset('imagens/lapis.jpg', height: 70,)),
//            FlatButton(
//                onPressed: null, child: Image.asset('imagens/lapis.jpg', height: 70,)),
//            FlatButton(
//                onPressed: _onPressed,
//                child: new Text('Click me099',
//                    style: TextStyle(color: Colors.white))),
//            RaisedButton(
//                child: Text("Press Me"),
//                onPressed: null,
//                shape: RoundedRectangleBorder(
//                    borderRadius: new BorderRadius.circular(30.0)))
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
                child: Text("Dicas de Português",
                    style: TextStyle(color: Colors.white)),
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)))),
      ],
    ),
  ));
}

void _onPressed() {
  print("Clique");
//  Navigator.of(this)
//      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
  //return new SecondScreen();
}
