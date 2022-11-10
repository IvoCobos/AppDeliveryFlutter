import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                _topBar(context),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  alignment: Alignment.centerLeft,
                  child: Text('Descrube nuevos lugares',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0)),
                ),
                _sliderCards(),
              ],
            ),
          )
        ]))
      ],
    ));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 320,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(children: [
          Icon(
            Icons.search,
            size: 20.0,
            color: grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child:
                Text('Search', style: TextStyle(color: grey, fontSize: 17.0)),
          )
        ]),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
          icon: Icon(Icons.filter_list, size: 30, color: Colors.white),
          onPressed: () {},
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _targeta(context);
          },
        );
      },
    )
  );
}

Widget _targeta(BuildContext context) {
  return Container(
    child: Column(
      children: [
        ClipRRect(
          child: Image(
            image: AssetImage('/home/ivan/delivery_app/delivery_app/lib/src/images/casey-lee.jpg'),
          ),
        )
      ],
    ),
  );
}