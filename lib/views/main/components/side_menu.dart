import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants.dart';

import 'area_info_text.dart';
import 'knowledges.dart';
import 'languages.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                        title: "Residence", text: "United Kingdom"),
                    const AreaInfoText(
                      title: "City",
                      text: "London",
                    ),
                    const AreaInfoText(
                      title: "Experience",
                      text: "4+ years",
                    ),
                    const Skills(),
                    const SizedBox(height: kDefaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: kDefaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: kDefaultPadding / 2),
                            const Icon(Icons.download_rounded,
                                color: kPrimaryColor)
                          ],
                        ),
                      ),
                    ),
                    Container(
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
                            icon: SvgPicture.asset("assets/icons/gitlab.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
