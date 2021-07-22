import "package:flutter/material.dart";

class GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Go Back',
      child: Icon(Icons.arrow_back_rounded),
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      focusColor: Colors.white,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
