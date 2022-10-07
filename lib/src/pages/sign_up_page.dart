import 'package:delivery_app/src/widgets/back_button.dart';
import 'package:flutter/material.dart'; 

import 'package:delivery_app/src/widgets/back_button.dart';
import 'package:delivery_app/src/colors/colors.dart';

class SignUpPage extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Crea una cuenta', 
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 30.0)),
            _usernameInput(context),
            _emailInput(context),
            _phoneInput(context),
            _dateOfBirthInput(context),
            _passwordInput(context),
            _singUpButton(context),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Text(
                'Al hacer click en "Crear cuenta" usted acepta los Terminos y Condiciones.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0))
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Usuario',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _emailInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _phoneInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Tele´fono',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Fecha de nacimiento',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _passwordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _singUpButton(BuildContext context){
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed: () {

      },
      color:  Theme.of(context).accentColor,
      child: Text(
       'Crear cuenta',
       style: TextStyle(color: Colors.white, fontSize: 17.0),
       ),
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
        ),
      ),
  );
}