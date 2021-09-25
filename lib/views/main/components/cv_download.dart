import 'package:flutter/foundation.dart';
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
    const String text = !kIsWeb ? "OPEN WEB VERSION" : "DOWNLOAD CV";
    const IconData icon = !kIsWeb ? Icons.launch : Icons.download_rounded;

    return TextButton(
      onPressed: () async {
        !kIsWeb
            ? await _controller.launchUrl(context, 'https://bobsar0.github.io',
                'Could not launch website')
            : await _controller.downloadFile(
                './assets/files/resume.pdf', "Resume - Steve Onyeneke");
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            const Icon(icon, color: kPrimaryColor)
          ],
        ),
      ),
    );
  }
}
