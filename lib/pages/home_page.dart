import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/size.dart';
import 'package:flutter_portfolio_1/widgets/contact_section.dart';
import 'package:flutter_portfolio_1/widgets/drawer_mobile.dart';
import 'package:flutter_portfolio_1/widgets/header_desktop.dart';
import 'package:flutter_portfolio_1/widgets/header_mobile.dart';
import 'package:flutter_portfolio_1/widgets/main_desktop.dart';
import 'package:flutter_portfolio_1/widgets/projects_section.dart';
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

            const SizedBox(height: 30),

            //PROJECTS
            ProjectsSection(screenWidth: screenWidth),

            const SizedBox(height: 30),

            //CONTACT
            ContactSection(),

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
