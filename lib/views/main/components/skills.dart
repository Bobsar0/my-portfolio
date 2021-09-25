import 'package:flutter/material.dart';
import 'package:my_portfolio/common/animated_progress_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Frameworks",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "Flutter",
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Node.js",
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.50,
                label: "React",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
