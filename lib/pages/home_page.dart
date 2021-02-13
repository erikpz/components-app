import 'package:flutter/material.dart';
import 'package:components_app/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components App'),
      ),
      body: _lista(context),
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    print(data);
    return data.map((rut) {
      return ListTile(
        title: Text(rut['texto']),
        leading: Icon(Icons.account_circle),
        trailing: Icon(Icons.navigate_next),
        onTap: () {
          /* final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route); */
          Navigator.pushNamed(context, rut['ruta']);
        },
      );
    }).toList();
  }

  Widget _lista(BuildContext context) {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(children: _listItems(snapshot.data, context));
        });
  }
}
