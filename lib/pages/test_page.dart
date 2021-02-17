import 'package:flutter/material.dart';
import '../widgets/display_counter.dart';

class TestPage extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestPage> {
  int _counter = 0;
  void handleAdd() {
    setState(() {
      _counter++;
    });
  }

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
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DisplayCounter(count: _counter),
            Incrementor(handleAdd: handleAdd)
          ],
        )));
  }
}
