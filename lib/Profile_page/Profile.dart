import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: lightText,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundColor: highlightColor,
                          radius: 50,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: bodyColor,
                            child: IconButton(
                              splashRadius: 1,
                              onPressed: () {},
                              icon: const Icon(Icons.camera_alt_outlined),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      bottom: 5,
                    ),
                    child: SizedBox(
                      child: Text(
                        "Sarah Jeanne",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 30,
                    ),
                    child: SizedBox(
                      child: Text(
                        "Madurai",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 20,
                            left: 44,
                            right: 40,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                child: Column(
                                  children: const [
                                    Text(
                                      "270",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Points",
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
                                      "380",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Transactions",
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
                                      "72",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Connections",
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
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: appBarColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: SwitchListTile(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: highlightColor,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  secondary: const Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Notification",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      fontSize: 20,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: appBarColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.logout_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  title:const Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'poppin',
                      fontSize: 20,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500,
                    ),
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
