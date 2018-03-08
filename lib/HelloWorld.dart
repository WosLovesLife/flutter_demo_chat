import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello World",
      home: new Center(
        child: new Text(
          'Hello World',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

void main() => runApp(new HelloWorld());