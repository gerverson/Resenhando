import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><p><img alt="Test Image" src="https://i.ytimg.com/vi/RHLknisJ-Sg/maxresdefault.jpg" /></p> ';

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: HtmlView(data: html),
//        RaisedButton(
//          color: Colors.red,
//          child: Text('Go back to First Screen'),
//          onPressed: () {
//            //Use`Navigator` widget to pop oir go back to previous route / screen
//            Navigator.pop(context);
//          },
//        ),
      ),
    );
  }
}