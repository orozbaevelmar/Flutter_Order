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
              Text('8th commit'),
              Text('9th commit'),
              Text('10th commit'),
              Text('11th commit'),
              Text('12th commit'),
              Text('13th commit'),
              Text('14th commit'),
              Text('15th commit'),
              Text('16th commit'),
              Text('17th commit'),
              Text('18th commit'),
            ]),
          ),
        ),
      ),
    );
  }
}
