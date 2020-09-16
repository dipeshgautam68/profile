import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/a.jpg"),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "Dipesh Gautam",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'Studies Computer Engineering at Western Regional Campus',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "Connect with me",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(FontAwesomeIcons.facebook),
                    color: Colors.blue,
                    onPressed: () {
                      launch('https://www.facebook.com/dipesh.gautam.144/');
                    }),
                IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    color: Colors.red,
                    onPressed: () {
                      launch('https://www.instagram.com/dipeshgautam22/');
                    }),
                IconButton(
                    icon: Icon(FontAwesomeIcons.twitter),
                    color: Colors.blueAccent,
                    onPressed: () {
                      launch('https://twitter.com/gautamdipesh220');
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
