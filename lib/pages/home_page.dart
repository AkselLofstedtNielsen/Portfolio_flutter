import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/skillitems.dart';
import 'package:flutter_portfolio_1/widgets/drawer_mobile.dart';
import 'package:flutter_portfolio_1/widgets/header_desktop.dart';
import 'package:flutter_portfolio_1/widgets/header_mobile.dart';
import 'package:flutter_portfolio_1/widgets/mainDesktop.dart';
import 'package:flutter_portfolio_1/widgets/skillsDesktop.dart';

import '../widgets/mainMobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final double kMinDesktopWidth = 600.0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            if (constraints.maxWidth >= kMinDesktopWidth)
              MainDesktop(screenHeight: screenHeight, screenWidth: screenWidth)
            else
              MainMobile(screenHeight: screenHeight, screenWidth: screenWidth),
            //SKILLS
            Container(
              width: screenWidth,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //title
                  const Text(
                    "What i can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //platforms skills
                  const SkillsDesktop()
                ],
              ),
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
            const SizedBox(
              height: 500,
              width: double.maxFinite,
            )
          ],
        ),
      );
    });
  }
}
