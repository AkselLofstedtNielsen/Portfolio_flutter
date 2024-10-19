import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/size.dart';
import 'package:flutter_portfolio_1/widgets/contact_section.dart';
import 'package:flutter_portfolio_1/widgets/drawer_mobile.dart';
import 'package:flutter_portfolio_1/widgets/footer.dart';
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
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

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
            : DrawerMobile(
                onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navBarKeys.first),
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(
                  onNavItemTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop(
                    navigate: () {
                      scrollToSection(3);
                    },
                    screenHeight: screenHeight,
                    screenWidth: screenWidth)
              else
                MainMobile(
                    navigate: () {
                      scrollToSection(3);
                    },
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),

              //SKILLS
              Container(
                key: navBarKeys[1],
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
              ProjectsSection(key: navBarKeys[2], screenWidth: screenWidth),

              const SizedBox(height: 30),

              //CONTACT
              ContactSection(
                key: navBarKeys[3],
              ),

              //FOOTER
              Footer()
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
