import 'package:flutter/material.dart';

// Use => for one-line functions or methods.
void main() => runApp(MyApp());

// In Flutter, almost everything is a widget, including alignment, padding, and layout.
// A widgte's main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}