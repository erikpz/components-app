import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _numeros = [];
  int _ultimoItem = 0;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _agregar10();
      }
    });
    _agregar10();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        backgroundColor: Color.fromRGBO(41, 50, 65, 1),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
        controller: _scrollController,
        itemCount: _numeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _numeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/loader.gif'),
              image: NetworkImage('https://picsum.photos/id/$imagen/500/300'));
        });
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _numeros.add(_ultimoItem);
      setState(() {});
    }
  }
}
