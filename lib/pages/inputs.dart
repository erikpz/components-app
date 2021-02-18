import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<InputsPage> {
  String _nombre = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  TextEditingController _inputDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs fields'),
        backgroundColor: Color.fromRGBO(41, 50, 65, 1),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
        children: [
          _crearInput(),
          SizedBox(height: 20.0),
          _crearPassword(),
          SizedBox(height: 20.0),
          _crearEmail(),
          SizedBox(height: 20.0),
          _crearFecha(context),
          Divider(),
          _mostrarCampo(campo: _nombre, nombre: 'Nombre'),
          Divider(),
          _mostrarCampo(campo: _password, nombre: 'Password'),
          Divider(),
          _mostrarCampo(campo: _email, nombre: 'Email'),
          Divider(),
          _mostrarCampo(campo: _fecha, nombre: 'Fecha'),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras: ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          icon: Icon(Icons.mood),
          suffix: Icon(Icons.person)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
        ;
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Contrasena',
        icon: Icon(Icons.security),
        suffix: Icon(Icons.lock),
        helperText: 'Contrasena',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          labelText: 'Correo',
          helperText: 'Tu correo',
          icon: Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          suffix: Icon(Icons.mark_email_read)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _mostrarCampo({String campo, String nombre}) {
    return ListTile(
      title: Text('$nombre: $campo'),
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.datetime,
      controller: _inputDateController,
      decoration: InputDecoration(
          hintText: 'Fecha',
          labelText: 'Date',
          helperText: 'Ingresa fecha',
          icon: Icon(Icons.date_range),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime(2030));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputDateController.text = _fecha;
      });
    }
  }
}
