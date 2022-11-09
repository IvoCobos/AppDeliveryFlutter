import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CustomScrollView(
      slivers: [SliverList(delegate: SliverChildListDelegate(
        [
          _topBar(context)
      ]))],
    ));
  }  
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        child: Row(children: [
          Icon(Icons.search, size: 20.0, color: grey,)
          ]),
      ),
      Container(
        child: Text('Hola'),
      )
    ],
  );
}