import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          elevation: 20.0,
          title: Text('Test'),
          backgroundColor: Color.fromRGBO(41, 50, 65, 1),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blue[200]),
            width: 100,
            height: 70,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.green[100]),
                child: Text('Hello!')),
          ),
        ));
  }
}
