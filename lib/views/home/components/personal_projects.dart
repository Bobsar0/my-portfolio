import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/views/home/components/project_card.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Personal Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: kDefaultPadding),
        GridView.builder(
          //size the height of the viewport to the sum of the heights of its children
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: personalProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(personalProjects[index]),
        )
      ],
    );
  }
}
