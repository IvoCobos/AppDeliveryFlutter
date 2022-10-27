import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('/home/ivan/delivery_app/delivery_app/lib/src/images/background.jpg'),
                ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('PEDIDOS DIRECTO A TU PUERTA.', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
                child: Text('Establecer la ubicación exacta para encontrar los restaurantes adecuados cerca de usted.', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 17.0
                ),),
              ),
              Container(
                width: 350,
                height: 45.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).accentColor,
                  padding: EdgeInsets.symmetric(horizontal: 150.0),
                  child: Row(
                    children: [
                      Text('LOG IN', style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ))
                    ],
                    ),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('/home/ivan/delivery_app/delivery_app/lib/src/images/facebook.png'),
                        width: 20.0,
                        height: 20.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text('CONECTAR CON FACEBOOK', style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0),
                          )
                        )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
