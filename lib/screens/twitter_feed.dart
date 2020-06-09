import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
        title: Text('Twitter Feed'),
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                _cardHeader(),
                _cardBody(),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.orange[200],
                  margin: EdgeInsets.only(top:8 ),
                ),
                _cardFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/pg.png'),
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Youssef Taha',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '@gmail.com',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text('Fri, 12 May 2020 - 9.30',
                style: TextStyle(fontSize: 12, color: Colors.grey))
          ],
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: Text(
        'Making friends is easy as wving your handback and forth in easy step',
        style: TextStyle(height: 2),
      ),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                color: Colors.orange,
                icon: Icon(Icons.repeat),
                onPressed: () {},
              ),
              Text('25')
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('SHARE'),
                textColor: Colors.orange,
              ),
              FlatButton(
                onPressed: () {},
                child: Text('OPEN'),
                textColor: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
