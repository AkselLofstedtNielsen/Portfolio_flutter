import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 25),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //Title
          Text("Socials",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: CustomColor.whitePrimary)),
          const Divider(),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              Text("Lofstedt-app@hotmail.com",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: CustomColor.whitePrimary)),
            ],
          ),
          const Divider(),
          //Icons

          Wrap(
            spacing: 18,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/github.png",
                  width: 35,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 35,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/instagram.png",
                  width: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
