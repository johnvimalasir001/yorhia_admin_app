import 'package:flutter/material.dart';
import 'package:yorhia_admin_app/Order/Expansion_Sheet.dart';
import 'package:yorhia_admin_app/Order/order_page.dart';
import 'package:yorhia_admin_app/theme/colors.dart';

class TotalOrders extends StatelessWidget {
  const TotalOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBars(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20, 
                itemBuilder: (context, index) {
                  return const ExpansionSheet();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
