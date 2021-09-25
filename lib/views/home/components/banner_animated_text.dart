import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/common/utils/responsive.dart';

class BannerAnimatedText extends StatelessWidget {
  const BannerAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            size: kDefaultPadding / 2,
            color: kPrimaryColor,
          ),
          const Text('  I '),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText('develop frontend and backend of web and mobile apps.',
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText(
        'create continuous integration and deployment pipelines.',
        speed: const Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        'am self motivated and team oriented.',
        speed: const Duration(milliseconds: 60),
      )
    ]);
  }
}
