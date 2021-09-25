import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/common/utils/constants.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: kIsWeb
                ? SvgPicture.asset("icons/github.svg")
                : SvgPicture.asset("assets/icons/github.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/gitlab.svg"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
