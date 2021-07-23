import 'package:flutter/material.dart';
import 'package:porto_graphy/gobackfab.dart';
import 'package:url_launcher/url_launcher.dart';

void launcherUrl(String url) async {
  if (await canLaunch(url)) {
    await (launch(url));
  } else {
    throw 'Could Not Launch $url';
  }
}

var webList = [
  {
    'url': 'http://example.com',
    'img': 'assets/socmed-icon/www.png',
    'txt': "marufphotography.com",
  },
  {
    'url': 'mailto:info@marufphotography.com',
    'img': 'assets/socmed-icon/mail.png',
    'txt': "info@marufphotography.com",
  },
  {
    'url': 'http://example.com',
    'img': 'assets/socmed-icon/fb.png',
    'txt': "Ma'ruf Photography",
  },
  {
    'url': 'https://example.com',
    'img': 'assets/socmed-icon/ig.png',
    'txt': '@marufphotography',
  },
  {
    'url': 'https://example.com',
    'img': 'assets/socmed-icon/tw.png',
    'txt': '@marufhotography',
  }
];

Widget websiteIcon(Map<String, String> web) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: InkWell(
      onTap: () {
        launcherUrl(web['url']);
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
                web['img'],
                width: 30,
                height: 30,
              ),
            ),
            Container(
              child: Text(
                web['txt'],
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
  );
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textMargin = 30.0;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      textMargin = MediaQuery.of(context).size.width * 0.2;
    }
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
              padding:
                  EdgeInsets.symmetric(horizontal: textMargin, vertical: 30),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var i = 0; i < webList.length; i++)
                        websiteIcon(webList[i])
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: GoBackButton(),
    );
  }
}
