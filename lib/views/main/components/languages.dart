import 'package:flutter/material.dart';
import 'package:my_portfolio/common/components/animated_progress_indicator.dart';

import '../../../common/utils/constants.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Go",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "JavaScript (ES6+)",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Java",
        ),
      ],
    );
  }
}
