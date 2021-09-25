import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';

class CVDownload extends StatelessWidget {
  const CVDownload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            const Icon(Icons.download_rounded, color: kPrimaryColor)
          ],
        ),
      ),
    );
  }
}
