import 'package:flutter/material.dart';
import 'package:starbhak_mart/widgets/home_nav_bar.dart';
import 'package:starbhak_mart/widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Misalnya terdapat 4 tab
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Delivers on Time",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  isScrollable: true,
                    //indicator: BoxDecoration(),
                    labelStyle: TextStyle(fontSize: 20),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(text: "All"),
                      Tab(text: "Makanan"),
                      Tab(text: "Minuman"),
                    ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}