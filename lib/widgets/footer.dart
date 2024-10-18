import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      height: 300,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Made by Aksel using Flutter",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
