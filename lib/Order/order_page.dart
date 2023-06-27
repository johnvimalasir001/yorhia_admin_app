import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/Order/Orders_in_listview.dart';
import 'package:yorhia_admin_app/Order/Total_orders.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              AppBars(),
              MainCard(),
              RowCard(),
              TabVeiw(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: appBarColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: lightText,
              )),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Orders",
              style: TextStyle(
                fontSize: 25,
                color: lightText,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 30,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: appBarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: highlightColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 5,
            ),
            child: Text(
              "#RS4581",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "9, chatiram Street, Udumalpet",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  // horizontal: 25,
                  vertical: 10,
                ),
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 20,
                    left: 40,
                    right: 40,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Column(
                          children: const [
                            Text(
                              "400",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Orders",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        child: Column(
                          children: const [
                            Text(
                              "120",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Customers",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        child: Column(
                          children: const [
                            Text(
                              "100",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Registered",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RowCard extends StatelessWidget {
  const RowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          children: [
            const Text(
              "Recent Orders",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            SizedBox(
              child: TextButton(
                child: const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 15,
                    color: highlightColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TotalOrders(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabVeiw extends StatelessWidget {
  const TabVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: const [
          SizedBox(
            height: 80,
            width: double.infinity,
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "Placed",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppin',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Delivered",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppin',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Cancelled",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppin',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: TabBarView(
                children: [
                  OrderInListView(),
                  OrderInListView(),
                  OrderInListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
