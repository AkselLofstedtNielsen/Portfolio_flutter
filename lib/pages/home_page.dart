import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/widgets/header_desktop.dart';
import 'package:flutter_portfolio_1/widgets/site_logo.dart';
import '../constants/nav_items.dart';
import '../constants/colors.dart';
import '../styles/style.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          //const HeaderDesktop(),
          HeaderMobile(
            onMenuTap: () {},
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
  }
}
