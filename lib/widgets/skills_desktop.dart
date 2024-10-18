import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platforms
        //FIXA LANGUAGE + Frame
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200, maxWidth: 900),
              child: Wrap(
                spacing: 5.0,
                runSpacing: 5.0,
                children: [
                  for (int i = 0; i < platformItems.length; i++)
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          color: CustomColor.bgLight2,
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: Image.asset(
                          color: CustomColor.whitePrimary,
                          platformItems[i]["img"],
                          width: 26,
                        ),
                        title: Text(platformItems[i]["title"]),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
        const Divider(),

        //Languages
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    for (int i = 0; i < languageItems.length; i++)
                      Chip(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        label: Text(languageItems[i]["title"]),
                        avatar: Image.asset(languageItems[i]["img"]),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),

        const Divider(),

        //Frameworks
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    for (int i = 0; i < frameworkItems.length; i++)
                      Chip(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        label: Text(frameworkItems[i]["title"]),
                        avatar: Image.asset(frameworkItems[i]["img"]),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
    //skills
  }
}
