import 'package:flutter/material.dart';
import '../screens/home_tabs/favourites.dart';
import '../screens/home_tabs/popular.dart';
import '../screens/home_tabs/whats_new.dart';
import '../shared_ui/drawer.dart';

class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews>with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: false,
         title: Text('HeadLine News'),
        actions: <Widget>[
         
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[700],
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: "WHAT'S NEW",
            ),
            Tab(
              text: "POPULAR",
            ),
            Tab(
              text: "FAVOURITES",
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [
            Favourites(),
            Populars(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}