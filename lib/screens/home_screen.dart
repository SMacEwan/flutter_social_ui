import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/widgets/custom_drawer.dart';
import 'package:flutter_social_ui/widgets/following_users.dart';
import 'package:flutter_social_ui/widgets/posts_carousel.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // _tabController.index;
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                    'SPOOK',
                    style: kMainLabelTextStyle1,
                  ),
                  Text(
                    'BOOK',
                    style: kMainLabelTextStyle2,
                  ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4.0,
          indicatorColor: Theme.of(context).primaryColor,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          tabs: <Widget>[
            Tab(
              text: 'Trending',
            ),
            Tab(
              text: 'Latest',
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: <Widget>[
          FollowingUsers(),
          PostsCarousel(pageController: _pageController, title: 'Posts', posts: posts,)
        ],
      ),
    );
  }
}


