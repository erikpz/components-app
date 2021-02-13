import 'package:flutter/material.dart';

class AvatarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
