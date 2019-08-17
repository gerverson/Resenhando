import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HelpScreen extends StatefulWidget {
  @override
  HelpScreenState createState() {
    return HelpScreenState();
  }
}

class HelpScreenState extends State<HelpScreen> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    _loadHtmlFromAssets();
    return Scaffold(
      appBar: AppBar(title: Text('Help')),
      body: WebView(
        initialUrl: '',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
//    String fileText = await rootBundle.loadString('assets/help.html');
    String fileText = "<div> "
        "<p>Taken from wikpedia</p>"
        "<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAM4AAADCCAYAAAAB3f2/AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAANjSURBVHic7dgxa5V3GIfhJ+ecFKFtDIKTWErHghTEqYODi7sfs+BYkIKTU3Fw8Rs0bUehrXWoJZ2ySCL05v0jttcFmQK/8/BybvKSmZnzRT9nA/9Ruw99AHyMDh/6gH/p2sx8sWj795n5dePNT2bmy403L7yemZ832jrMzFcbbb3rzcz8tGh7Zu0z/mNmfrnqlx/Tq9q3C+/9bsG9Xy+894cN77y18M4fN7zzMt8svP37qz7UqxoEwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQCAcCIQDgXAgEA4EwoFAOBAIBwLhQHD06tX8tmJ4t5s5OZnzLTefPZv9/fvz6ZabFx49mr8eP543W26+fDm7O3fmsy03Lzx4MG+fPp0/t9g6O5uj27fn8y223nXv3vz9/Pm8XrE9M/Pixezv3l3znXj4cN4+eXL5Mz6cnq55YCvs90u3j2fmeMvN3cK/5/v9HGbmZIuto6MtVi63281+Nrrziv1l3veMD+s+dnvHxzM3b67Zvn59+83DYd29p6fbbe336+68cWPN7oWV34n3PeOj8/NtX6fg/8A/ByAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHAuFAIBwIhAOBcCAQDgTCgUA4EAgHgn8AqoazIxAgzzcAAAAASUVORK5CYII='/>"
        "</div>";
//    String fileText = '<html><body>hello world</body></html>';
//    print(fileText);

    _controller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}