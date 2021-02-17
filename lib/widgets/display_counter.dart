import 'package:flutter/material.dart';

class DisplayCounter extends StatelessWidget {
  DisplayCounter({this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class Incrementor extends StatelessWidget {
  Incrementor({this.handleAdd});
  final VoidCallback handleAdd;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        handleAdd();
      },
      child: Icon(Icons.add),
    );
  }
}
