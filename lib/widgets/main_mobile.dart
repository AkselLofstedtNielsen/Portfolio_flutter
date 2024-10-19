import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/color_filter.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.navigate,
  });

  final Function navigate;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: screenWidth,
          minHeight: screenHeight * 0.8,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ColorFiltered(
                colorFilter: bgColorFilter,
                child: Image.asset(
                  "assets/personal/me_img.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Main content
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        CustomColor.textShadeOne,
                        CustomColor.textShadeTwo
                      ],
                    ).createShader(bounds),
                    child: const Text(
                      "Experienced Application Developer",
                      style: TextStyle(
                          fontSize: 22.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                          shadows: [
                            Shadow(
                                blurRadius: 10.0,
                                color: Colors.black26,
                                offset: Offset(5, 5))
                          ]),
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        CustomColor.textShadeOne,
                        CustomColor.textShadeTwo
                      ],
                    ).createShader(bounds),
                    child: const Text(
                      "Java development student",
                      style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                          shadows: [
                            Shadow(
                                blurRadius: 10.0,
                                color: Colors.black26,
                                offset: Offset(5, 5))
                          ]),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: screenWidth / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        navigate();
                      },
                      child: const Text(
                        "Get in touch",
                        style: TextStyle(color: CustomColor.whitePrimary),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
