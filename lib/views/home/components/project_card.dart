import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard(
    this.project, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text('View repo',
                  style: const TextStyle(color: kPrimaryColor)))
        ],
      ),
    );
  }
}
