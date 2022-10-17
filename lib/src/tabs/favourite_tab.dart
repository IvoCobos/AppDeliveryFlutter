import 'package:flutter/material.dart';

class FavouriteTab extends StatefulWidget {

  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Favorito'),
      ),
    );
  }
}