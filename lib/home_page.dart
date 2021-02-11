import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatelessWidget {
  InAppWebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('RV-Cabs'),
      ),
      body: Container(
          child: Column(children: <Widget>[
        Expanded(
          child: InAppWebView(
            initialUrl: 'http://103.224.240.187:8090/rvcabsv2/#',
            initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
              debuggingEnabled: true,
            )),
            onWebViewCreated: (InAppWebViewController controller) {
              _webViewController = controller;
            },
            onLoadStart: (InAppWebViewController controller, String url) {},
            onLoadStop: (InAppWebViewController controller, String url) {},
          ),
        ),
      ])),
    ));
  }
}
