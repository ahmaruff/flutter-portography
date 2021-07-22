import 'dart:async';
import 'package:flutter/material.dart';

class ImageRotator extends StatefulWidget {
  final List<String> photos;

  ImageRotator(this.photos);

  @override
  State<StatefulWidget> createState() => new ImageRotatorState();
}

class ImageRotatorState extends State<ImageRotator> {
  int _pos = 0;
  Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      setState(() {
        _pos = (_pos + 1) % widget.photos.length;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Image.asset(
      widget.photos[_pos],
      fit: BoxFit.cover,
      gaplessPlayback: true,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    super.dispose();
  }
}
