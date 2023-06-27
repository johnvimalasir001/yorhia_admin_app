import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/Staffs.dart/Officials_bottomSheet.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

class OfficialsPage extends StatelessWidget {
  const OfficialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: Column(
          children: [
            const AppBars(),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Image(
                image: NetworkImage(
                  "https://img.freepik.com/free-vector/shop-with-sign-open-design_23-2148544029.jpg?w=740&t=st=1687507418~exp=1687508018~hmac=5252befb479b9c9895aa41265500b758dc984bf942f8cee9a78c4a110c1067fb",
                ),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                children: const [
                  SizedBox(
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 30,
                        color: lightText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Shop Number and Name",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Shop Address",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              child: Row(
                children: const [
                  SizedBox(
                    child: Text(
                      "Officials",
                      style: TextStyle(
                        fontSize: 30,
                        color: lightText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const OfficialsBadge();
                },
              ),
            )
          ],
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
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            alignment: Alignment.center,
            child: const Text(
              "Shop Details",
              style: TextStyle(
                fontSize: 25,
                color: lightText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OfficialsBadge extends StatelessWidget {
  const OfficialsBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        officalsbottomSheet(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Row(
          children: [
            SizedBox(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: highlightColor,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Manager",
                      style: TextStyle(
                        fontSize: 15,
                        color: lightText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
