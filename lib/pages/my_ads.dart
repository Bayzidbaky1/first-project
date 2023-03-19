import 'package:first_project/tabs%20Screen/Favourite.dart';
import 'package:first_project/tabs%20Screen/ads.dart';
import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final tabs = [
      Ads(),
      FavScreen(),
    ];


    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xffE5E5E5),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Color(0xffE5E5E5),
            title: Center(
                child: Text(
              "My Ads",
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                  Tab(
                      icon: Column(
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        "My Ads",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  )),
                  Tab(
                      icon: Column(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                      Text(
                        "My Favourites",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  )),
                ]),
                Expanded(
                  child: TabBarView(children: tabs),
                )
              ],
            ),
          ),
        ));
  }
}
