// ignore_for_file: prefer_const_constructors

library home_module;

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:home_module/HomeControllers/HomeScreenController.dart';
import 'package:home_module/HomeViews/product_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:network_module/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  void initState() {
    super.initState();
    controller.fetchProductList();
  }

  Widget _buildPopulars() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7),
      delegate: SliverChildBuilderDelegate(_buildPopularItem,
          childCount: controller.productList.value.products!.length),
    );
  }

  Widget _buildPopularItem(BuildContext context, int index) {
    return ProductCard(
      product: controller.productList.value.products![index],
    );
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
            Container(
                margin: EdgeInsets.only(right: 8),
                child: IconButton(
                  icon: Icon(
                    FeatherIcons.shoppingCart,
                    color: Utils.secondaryColor,
                  ),
                  onPressed: () {},
                ))
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: Obx(
          () => controller.isLoading.value
              ? Center(
                  child: LoadingAnimationWidget.stretchedDots(
                      color: Utils.secondaryColor, size: 38),
                )
              : CustomScrollView(
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
        ));
  }
}
