import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/views/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/personal_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        PersonalProjects(),
      ],
    );
  }
}
