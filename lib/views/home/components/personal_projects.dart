import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/common/utils/responsive.dart';
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
        const SizedBox(height: kDefaultPadding),
        Text(
          'Personal Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: kDefaultPadding),
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const ProjectsGridView({
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //size the height of the viewport to the sum of the heights of its children
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: personalProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(personalProjects[index]),
    );
  }
}
