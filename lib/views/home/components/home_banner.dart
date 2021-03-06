import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/assets.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/common/utils/responsive.dart';
import 'package:my_portfolio/controllers/controller.dart';
import 'package:my_portfolio/views/home/components/profile_button.dart';

import 'banner_animated_text.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({
    Key? key,
  }) : super(key: key);

  final AppController appController = AppController();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.backgroundImg,
            fit: BoxFit.cover,
          ),
          Container(color: kDarkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover Me!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(height: kDefaultPadding / 2),
                const BannerAnimatedText(),
                const SizedBox(height: kDefaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ProfileButton(
                      text: 'LINKEDIN PROFILE',
                      url: 'https://www.linkedin.com/in/steveonyeneke/'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
