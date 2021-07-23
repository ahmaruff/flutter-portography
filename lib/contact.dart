import 'package:flutter/material.dart';
import 'package:porto_graphy/gobackfab.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
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
            color: Color.fromRGBO(0, 0, 0, 0.8),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 30),
                      height: 3,
                      width: 200,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Get in touch with us!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        _launcherUrl('http://example.com');
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.language_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                "marufphotography.com",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        _laucherEmail('info@marufphotography.com');
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.mail_outline_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                "info@marufphotography.com",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        _launcherUrl('http://example.com');
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/socmed-icon/fb.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                "maruf photography",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        _launcherUrl('http://example.com');
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/socmed-icon/ig.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                "@marufphotography",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        _launcherUrl('http://example.com');
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/socmed-icon/tw.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                "@marufphotography",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: GoBackButton(),
    );
  }

  _launcherUrl(String url) async {
    if (await canLaunch(url)) {
      await (launch(url));
    } else {
      throw 'Could Not Launch $url';
    }
  }

  _laucherEmail(String address) async {
    var mail = 'mailto:$address';
    launch(mail);
  }
}
