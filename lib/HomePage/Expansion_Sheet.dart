import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

List<String> orderid = ["RAT01", "RAT02", "RAT03", "RAT04", "RAT05"];

class ExpansionSheet extends StatelessWidget {
  const ExpansionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: appBarColor,
        ),
        child: const ExpansionTile(
          title: Card(),
          trailing: SizedBox(),
          children: [
            ListTile(
              title: OrderDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: highlightColor,
          ),
        ),
        SizedBox(
          width: 140,
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: highlightColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    child: Text(
                      "#BR001",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: Row(
                  children: const [
                    SizedBox(
                      child: Text(
                        "Delivered",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 36,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.currency_rupee_sharp,
              size: 20,
              color: highlightColor,
            ),
            Text(
              "500",
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w600,
                color: highlightColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Row(
            children: const [
              Text(
                "Customer ID",
                style: TextStyle(
                  // fontStyle: ,
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "ABC001",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Row(
            children: const [
              Text(
                "Date",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "23-06-2023",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Row(
            children: const [
              Text(
                "Count",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "01",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Row(
            children: const [
              Text(
                "Item Name",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "Paddy",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Row(
            children: [
              const Text(
                "Total Price",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.currency_rupee_sharp,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    "500",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
