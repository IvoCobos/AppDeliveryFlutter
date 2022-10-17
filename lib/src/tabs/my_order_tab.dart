import 'package:flutter/material.dart';

class MyOrderTab extends StatefulWidget {

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Mis ordenes'),
      ),
    );
  }
}