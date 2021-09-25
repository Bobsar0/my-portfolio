import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/common/utils/responsive.dart';
import 'package:my_portfolio/controllers/controller.dart';
import 'package:my_portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  ProjectCard(
    this.project, {
    Key? key,
  }) : super(key: key);

  final AppController _controller = AppController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        color: kSecondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              // maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Spacer(),
            Text(
              project.description!,
              // textAlign: TextAlign.justify,
              maxLines:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 4
                      : 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (project.repoLink != null)
                  TextButton(
                    onPressed: () async {
                      await _controller.launchUrl(context, project.repoLink!,
                          'Could not launch repository');
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, primary: kPrimaryColor),
                    child: const Text('View repo'),
                  ),
                if (project.appLink != null)
                  TextButton(
                    onPressed: () async {
                      await _controller.launchUrl(context, project.appLink!,
                          'Could not launch application');
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, primary: kPrimaryColor),
                    child: const Text('View app'),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
