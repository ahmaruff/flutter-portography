import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
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
                      margin: EdgeInsets.all(30),
                    ),
                    Text(
                      "Ahmad Ma'ruf",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
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
                      child: ElevatedButton(
                        child: Text("START"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          shadowColor: Colors.blue[100],
                          elevation: 4,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          textStyle: TextStyle(
                            fontSize: 25,
                            letterSpacing: 4,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          print("pressed");
                        },
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      //height: 76,
                      margin: EdgeInsets.all(38),
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
