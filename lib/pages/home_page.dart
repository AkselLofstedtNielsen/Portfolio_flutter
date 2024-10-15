import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/size.dart';
import 'package:flutter_portfolio_1/utils/project_util.dart';
import 'package:flutter_portfolio_1/widgets/drawer_mobile.dart';
import 'package:flutter_portfolio_1/widgets/header_desktop.dart';
import 'package:flutter_portfolio_1/widgets/header_mobile.dart';
import 'package:flutter_portfolio_1/widgets/main_desktop.dart';
import 'package:flutter_portfolio_1/widgets/project_card.dart';
import 'package:flutter_portfolio_1/widgets/skills_desktop.dart';
import 'package:flutter_portfolio_1/widgets/skills_mobile.dart';

import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                  if (constraints.maxWidth >= kMedDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile()
                ],
              ),
            ),
            //PROJECTS
            Container(
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                children: [
                  //Work project titles
                  const Text(
                    "Work projects",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),

                  //Work projects cards
                  ProjectCardWidget(
                    project: workProjectUtils.first,
                  )
                ],
              ),
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
