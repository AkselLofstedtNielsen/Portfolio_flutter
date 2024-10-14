import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              //gradients the image logo
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/jesus.png",
              width: screenWidth / 4,
              height: screenHeight / 4,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          const Text(
            "Hello \n I am aksel blabla",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Get in touch")),
          )
          //intro text

          //btn
        ],
      ),
    );
  }
}