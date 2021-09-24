import 'package:flutter/material.dart';
// import 'package:flutter_profile/screens/home/home_screen.dart';
// import 'package:flutter_profile/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/views/main/main_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: kBodyTextColor),
              bodyText2: const TextStyle(color: kBodyTextColor),
            ),
      ),
      home: const MainScreen(),
    );
  }
}
