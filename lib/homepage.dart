import 'package:flutter/material.dart';
import 'package:porto_graphy/mainmenu.dart';
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ImageRotator(photos),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.8),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/profile.jpeg"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[600].withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Ahmad Ma'ruf",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PHOTOGRAPHY",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        letterSpacing: 8,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(38),
                      child: ElevatedButton(
                        child: Text("START"),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 0, 0, 0.3),
                          side: BorderSide(color: Colors.white, width: 3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 4,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainMenu()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
