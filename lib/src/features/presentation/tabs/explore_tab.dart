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
        width: 310,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(children: [
          Icon(Icons.search, size: 20.0, color: grey,),
          Text('Search', style: TextStyle(
            color: grey,
            fontSize: 17.0
          ))
          ]),
      ),
      Container(
        child: Text('Hola'),
      )
    ],
  );
}