import 'package:ar_social_app/models/db.dart';
import 'package:ar_social_app/widgets/custom_drawer.dart';
import 'package:ar_social_app/widgets/following.dart';
import 'package:ar_social_app/widgets/post_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
        centerTitle: true,
        title: const Text(
          'SOCIAL APP',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 8.0,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
          indicatorWeight: 3.0,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(text: 'Trending'),
            Tab(text: 'Latest'),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          const FollowingWidget(),
          PostSlider(
            title: 'Posts',
            pageController: _pageController,
            posts: posts,
          ),
        ],
      ),
    );
  }
}
