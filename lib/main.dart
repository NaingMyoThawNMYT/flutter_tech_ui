import 'package:flutter/material.dart';

import 'custom_border_painters/tech_border_1_painter.dart';
import 'custom_border_painters/tech_border_2_painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Tech UI'),
                ).addTechBorder1(),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Tech UI'),
                ).addTechBorder2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
