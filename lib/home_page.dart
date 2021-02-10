import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String url = 'https://www.google.com/';
    return Scaffold(
      appBar: AppBar(
        title: Text("RV-Cabs"),
      ),
      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Launch"),
          ),
          RaisedButton(
            onPressed: () async=> {
                if (await canLaunch(url)) {
                await launch(url, forceSafariVC: false)
                } else {
                throw 'Could not launch $url'
                }
            },
            child: const Text('Book a Ride'),
            )
          ],
        )
      ),
    );
  }
}