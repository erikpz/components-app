import 'package:flutter/material.dart';

class AvatarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(41, 50, 65, 1),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.green[200],
              child: Text('ER'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.irishtimes.com/polopoly_fs/1.3845531!/image/image.jpg_gen/derivatives/landscape_620/image.jpg'),
            ),
          )
        ],
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
