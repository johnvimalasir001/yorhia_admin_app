import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

Future<dynamic> officalsbottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
    ),
    elevation: 0,
    backgroundColor: bodyColor,
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Wrap(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: CircleAvatar(
                        radius: 50,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: SizedBox(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 20,
                            color: lightText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "Name",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightText,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "John vimal",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: bodyColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Age",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightText,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "46",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: bodyColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Experience",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightText,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: bodyColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                "Last Name",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: lightText,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "Asir",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: bodyColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "Gender",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: lightText,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "Male",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: bodyColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "Contact",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: lightText,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "9087654321",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: bodyColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Address",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: lightText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "1/322, Ashok Nagar, Natham",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: bodyColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
