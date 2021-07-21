import 'package:flutter/material.dart';
import 'package:porto_graphy/imagerotator.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30, top: 25),
                  child: Text(
                    "MA'RUF PHOTOGRAPHY",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      letterSpacing: 8,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.only(left: 20),
                        child: TextButton(
                          onPressed: () {},
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.only(left: 20),
                        child: TextButton(
                          onPressed: () {},
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.only(left: 20),
                        child: TextButton(
                          onPressed: () {},
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
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 25, right: 30),
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back_rounded),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
