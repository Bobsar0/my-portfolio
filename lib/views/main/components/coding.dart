import 'package:flutter/material.dart';
import 'package:my_portfolio/common/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Coding",
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
          label: "JavaScript (ES6)",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Java",
        ),
      ],
    );
  }
}
