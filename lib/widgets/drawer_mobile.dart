import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < nacIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              onTap: () {},
              leading: Icon(nacIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}