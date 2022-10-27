import 'package:delivery_app/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 350.00,
                fit: BoxFit.cover,
                image: AssetImage('/home/ivan/delivery_app/delivery_app/lib/src/images/background.jpg'),
                ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 500.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text('Bienvenido', style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                      ),
                    ),
                    Text('Ingresa con una cuenta', style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0
                      ),
                    ),
                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'forgot-password');
                        },
                        child: Text('¿Olvidaste tu contraseña?', style: TextStyle(
                        color:  Color.fromARGB(255, 56, 56, 56),
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0
                      ),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('¿No tienes una cuenta?', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0
                          )),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, 'sign-up');
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Crear cuenta', style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0
                              ),),
                            ),
                          )
                        ],
                      )
                    )
                  ],
                ), 
                ),
              ),
            ),
          )
        ],
        )
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
    );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _buttonLogin( BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed:  () {
        Navigator.pushNamed(context, 'tabs');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Log in', style: TextStyle(
        color: Colors.white,
        fontSize: 17.0
      ),
      ),
    ),
  );
}