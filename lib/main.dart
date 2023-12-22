import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Text('7th commit'),
              Text('8th commit / I\'ll create another branch in below'),
              Text('test commit 1 / In master branch'),
              Text('test commit 1 / In master branch'),
              Text('test commit 2 / In master branch'),
              Text('test commit 2 / In master branch'),
            ]),
          ),
        ),
      ),
    );
  }
}
