import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/Order/Orders_in_listview.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

import '../Order/Total_orders.dart';

final category = [
  'Today Sales',
  'Pending Order',
  'Stock Available',
  'Today Order'
];

List<String> amount = ['200', '500', '330', '450'];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: highlightColor,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: bodyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: appBarColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apps,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: highlightColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "David",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 10,
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return const CustomCard();
                  },
                ),
              ),
              const RowCard(),
              const OrderInListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: appBarColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: highlightColor,
                    radius: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee_sharp,
                          size: 18,
                          color: Colors.white,
                        ),
                        Text(
                          amount[0].toString(),
                          style: const TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Text(
                            category[0],
                            style: const TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Row(
                children: const [
                  Text(
                    "Tap to view",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      color: highlightColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
