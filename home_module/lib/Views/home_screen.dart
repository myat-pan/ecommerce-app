// ignore_for_file: prefer_const_constructors

library home_module;

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:home_module/Views/product_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildPopulars() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 2,
          childAspectRatio: 0.6),
      delegate: SliverChildBuilderDelegate(_buildPopularItem, childCount: 30),
    );
  }

  Widget _buildPopularItem(BuildContext context, int index) {
    return ProductCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          /* child: Icon(
            FeatherIcons.alertCircle,
            color: Colors.black,
          ), */
          ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(FeatherIcons.shoppingCart),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Welcome"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          /*  const SliverPadding(
            padding: EdgeInsets.only(top: 24),
            sliver: SliverAppBar(
              pinned: true,
            ),
          ), */
          /*   SliverPadding(
            padding: EdgeInsets.only(top: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                ((context, index) => _buildBody(context)),
                childCount: 1,
              ),
            ),
          ), */
          SliverPadding(
            padding: EdgeInsets.only(top: 8),
            sliver: _buildPopulars(),
          ),
          // const SliverAppBar(flexibleSpace: SizedBox(height: 24))
        ],
      ),
    );
  }
}
