import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/nav_items.dart';
import 'package:flutter_portfolio_1/widgets/header_desktop.dart';
import 'package:flutter_portfolio_1/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= 600.0
            ? null
            : Drawer(
                backgroundColor: CustomColor.scaffoldBg,
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 20),
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
              ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            if (constraints.maxWidth >= 600.0)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            //SKILLS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            )
          ],
        ),
      );
    });
  }
}
