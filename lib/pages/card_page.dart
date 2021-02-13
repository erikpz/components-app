import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        children: <Widget>[
          _getCard1(),
          SizedBox(height: 30.0),
          _getCard2(),
          SizedBox(height: 30.0),
          _getCard1(),
          SizedBox(height: 30.0),
          _getCard2(),
          SizedBox(height: 30.0),
          _getCard1(),
          SizedBox(height: 30.0),
          _getCard2(),
          SizedBox(height: 30.0),
          _getCard1(),
          SizedBox(height: 30.0),
          _getCard2(),
          SizedBox(height: 30.0),
          _getCard1(),
          SizedBox(height: 30.0),
          _getCard2(),
          SizedBox(height: 30.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _getCard1() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10.0,
        child: Column(children: <Widget>[
          ListTile(
            leading: Icon(Icons.mood),
            title: Text('Card title'),
            subtitle: Text('Lorem ipsum monkey table card seed paper...'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Accept')),
              FlatButton(onPressed: () {}, child: Text('Cancel'))
            ],
          )
        ]));
  }

  Widget _getCard2() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 15.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              FadeInImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1612288528103-edc64749d4ad?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'),
                placeholder: AssetImage('assets/loader.gif'),
                fadeInDuration: Duration(milliseconds: 300),
                height: 250.0,
                fit: BoxFit.cover,
              ),
              Container(
                  padding: EdgeInsets.all(10.0), child: Text('Image Card'))
            ],
          ),
        ),
      ),
    );
  }
}
