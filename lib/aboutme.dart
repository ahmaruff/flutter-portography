import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
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
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("assets/profile.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "About\nMe",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 5, bottom: 15),
                  child: Text(
                    "-------------",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      letterSpacing: 11,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut ornare mi, vel faucibus lectus. Cras id felis feugiat, vestibulum sapien ut, iaculis libero. Mauris rutrum purus at nulla pulvinar, euismod molestie dui tristique. Nulla pulvinar vestibulum accumsan. Phasellus in eleifend nunc. Nulla sed pharetra arcu, ut sodales velit. Fusce sed odio id sapien egestas placerat quis vel lorem.

Nulla justo mi, finibus sit amet tincidunt vitae, aliquet vitae nunc. Vestibulum eget iaculis enim, sit amet maximus velit. Vestibulum malesuada feugiat orci, et vestibulum mauris laoreet non. Vivamus scelerisque laoreet elementum. Aenean nunc ipsum, tincidunt efficitur ullamcorper id, sollicitudin non sem. Duis mollis leo magna, eu consequat tortor dictum non. Etiam egestas vulputate maximus. Donec ac semper lacus. Duis a dui lacus. Nullam luctus, massa lobortis faucibus porta, neque mauris aliquet sem, quis tempus nulla lacus vitae neque. 
                    """,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
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
