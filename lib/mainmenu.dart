import 'package:flutter/material.dart';
import 'package:porto_graphy/contact.dart';
import 'package:porto_graphy/gobackfab.dart';
import 'package:porto_graphy/imagerotator.dart';
import 'package:porto_graphy/aboutme.dart';
import 'package:porto_graphy/portfolio.dart';

// for background image loop
var photos = [
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/3.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
  'assets/6.jpg',
];

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ImageRotator(photos),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
          SafeArea(
            child: Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortfolioImage()),
                        );
                      },
                      autofocus: true,
                      child: Text(
                        "Portfolio",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutMe()),
                        );
                      },
                      autofocus: true,
                      child: Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Contact()),
                        );
                      },
                      autofocus: true,
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GoBackButton(),
    );
  }
}
