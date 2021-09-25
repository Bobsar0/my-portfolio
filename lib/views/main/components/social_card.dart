import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/controllers/controller.dart';

class SocialCard extends StatelessWidget {
  SocialCard({
    Key? key,
  }) : super(key: key);

  final AppController _controller = AppController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      color: const Color(0xFF24242E),
      child: Card(
        elevation: 10,
        color: kBackgroundColor,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () async {
                await _controller.launchUrl(
                    context,
                    'https://www.linkedin.com/in/steveonyeneke/',
                    'Could not launch LinkedIn Profile');
              },
              icon: SvgPicture.asset("icons/linkedin.svg"),
            ),
            IconButton(
              onPressed: () async {
                await _controller.launchUrl(
                    context,
                    'https://github.com/Bobsar0',
                    'Could not launch Github profile');
              },
              icon: kIsWeb
                  ? SvgPicture.asset("icons/github.svg")
                  : SvgPicture.asset("assets/icons/github.svg"),
            ),
            IconButton(
              onPressed: () async {
                await _controller.launchUrl(
                    context,
                    'https://gitlab.com/users/Bobsar01/groups',
                    'Could not launch Gitlab profile');
              },
              icon: SvgPicture.asset("icons/gitlab.svg"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
