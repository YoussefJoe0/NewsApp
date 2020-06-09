import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorsList = [
    Colors.red,
    Colors.green,
    Colors.teal,
    Colors.purple,
    Colors.brown,
    Colors.indigo,
  ];

  Random random = Random();

  Color _getColorList() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                _autherRow(),
                SizedBox(height: 16,),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _autherRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/pg.png'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Youssef Taha'),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '16 min',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Life Style',
                      style: TextStyle(color: _getColorList()),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
            icon: Icon(
              Icons.bookmark_border,
              color: Colors.grey,
            ),
            onPressed: () {})
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/pg.png'),
                fit: BoxFit.cover),
          ),
          width: 100,
          height: 100,
           margin: EdgeInsets.only(right: 16, ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                'The World Global Warming Annual Summit',
                style: TextStyle( fontSize: 18),
              ),
              Text(
                'Making friends is easy as wving your handback and forth in easy step',
                style: TextStyle(
                  color: Colors.grey,
                   fontSize: 16,
                   height: 1.5
                   ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
