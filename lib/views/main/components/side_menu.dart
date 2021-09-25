import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/views/main/components/social_card.dart';

import 'area_info_text.dart';
import 'cv_download.dart';
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
                  children: const [
                    AreaInfoText(title: "Residence", text: "United Kingdom"),
                    AreaInfoText(title: "City", text: "London"),
                    AreaInfoText(title: "Experience", text: "4+ years"),
                    Skills(),
                    SizedBox(height: kDefaultPadding),
                    Languages(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: kDefaultPadding / 2),
                    CVDownload(),
                    SocialCard(),
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
