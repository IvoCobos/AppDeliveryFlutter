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
            _username(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _username(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration,
    ),
  );
}