import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
          title: Text('Alert Page'),
          backgroundColor: Color.fromRGBO(41, 50, 65, 1)),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white, backgroundColor: Colors.blue[200]),
          child: Text('Alert'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      title: Text('Title'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              child: Text(
                                  'More content Lorem ipsum dolor atae...')),
                          FlutterLogo(size: 100.0),
                        ],
                      ));
                });
          },
        ),
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
