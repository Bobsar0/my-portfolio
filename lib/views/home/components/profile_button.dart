import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/common/utils/responsive.dart';
import 'package:my_portfolio/controllers/controller.dart';

class ProfileButton extends StatelessWidget {
  ProfileButton({
    Key? key,
    required this.text,
    required this.url,
  }) : super(key: key);

  final String text;
  final String url;

  final AppController _controller = AppController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await _controller.launchUrl(context, url, 'Could not launch Profile');
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context)
              ? kDefaultPadding * 2
              : kDefaultPadding,
          vertical: kDefaultPadding,
        ),
        backgroundColor: kPrimaryColor,
      ),
      child: Text(
        text,
        style: const TextStyle(color: kDarkColor),
      ),
    );
  }
}
