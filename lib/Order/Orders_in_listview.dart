import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/Order/Expansion_Sheet.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

List<String> orderid = ["RAT01", "RAT02", "RAT03", "RAT04", "RAT05"];

class OrderInListView extends StatelessWidget {
  const OrderInListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        itemCount: orderid.length,
        itemBuilder: (context, index) {
          return const ExpansionSheet();
        },
      ),
    );
  }
}

GestureDetector orderCard(context, index) {
  return GestureDetector(
    onTap: () {
      const ExpansionSheet();
    },
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: CircleAvatar(
              radius: 30,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                child: Text(
                  "Buy",
                  style: TextStyle(
                    fontSize: 20,
                    color: highlightColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                child: Text(
                  "BR001",
                  style: TextStyle(
                    fontSize: 20,
                    color: lightText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.currency_rupee_sharp,
                    size: 15,
                    color: lightText,
                  ),
                  Text(
                    "500",
                    style: TextStyle(color: lightText, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
