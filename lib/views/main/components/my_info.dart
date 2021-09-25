import 'package:flutter/material.dart';
import 'package:my_portfolio/views/main/components/social_card.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile-pic.jpeg"),
            ),
            const Spacer(),
            Text(
              "Steve Onyeneke",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Full Stack Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            SocialCard(),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
