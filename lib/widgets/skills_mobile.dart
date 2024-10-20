import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          //platform
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                leading: Image.asset(
                  platformItems[i]["img"],
                  color: CustomColor.whitePrimary,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),

          const Divider(
            color: CustomColor.textShadeTwo,
          ),

          //Language
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < languageItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight1,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  label: Text(languageItems[i]["title"]),
                  avatar: Image.asset(languageItems[i]["img"]),
                )
            ],
          ),

          const Divider(
            color: CustomColor.textShadeTwo,
          ),
          //Frameworks

          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < frameworkItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight1,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  label: Text(frameworkItems[i]["title"]),
                  avatar: Image.asset(frameworkItems[i]["img"]),
                )
            ],
          ),
        ],
      ),
    );
  }
}
