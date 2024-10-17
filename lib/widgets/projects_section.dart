import 'package:flutter/material.dart';
import 'package:flutter_portfolio_1/constants/colors.dart';
import 'package:flutter_portfolio_1/utils/project_util.dart';
import 'package:flutter_portfolio_1/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Work project titles
          const Text(
            "Work projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 50),
          //Work projects cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(spacing: 25, runSpacing: 25, children: [
              for (int i = 0; i < workProjectUtils.length; i++)
                ProjectCardWidget(
                  project: workProjectUtils[i],
                ),
            ]),
          ),

          SizedBox(height: 80),
          //Hobby project titles
          const Text(
            "Hobby projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 50),
          //Work projects cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(spacing: 25, runSpacing: 25, children: [
              for (int i = 0; i < hobbyProjectUtils.length; i++)
                ProjectCardWidget(
                  project: hobbyProjectUtils[i],
                ),
            ]),
          )
        ],
      ),
    );
  }
}
