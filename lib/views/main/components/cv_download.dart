import 'package:flutter/material.dart';
import 'package:my_portfolio/common/utils/constants.dart';
import 'package:my_portfolio/controllers/controller.dart';

class CVDownload extends StatelessWidget {
  CVDownload({
    Key? key,
  }) : super(key: key);

  final AppController _controller = AppController();

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
            IconButton(
              icon: const Icon(Icons.download_rounded),
              color: kPrimaryColor,
              onPressed: () async {
                await _controller.downloadFile(
                    '/assets/files/resume.pdf', "Resume - Steve Onyeneke");
              },
            )
          ],
        ),
      ),
    );
  }
}
