import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/color_filter.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
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
    return Stack(
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
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          height: screenHeight / 1.2,
          constraints: const BoxConstraints(minHeight: 350.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
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
                  SizedBox(
                    height: 20,
                  ),
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
            ],
          ),
        ),
      ],
    );
  }
}
