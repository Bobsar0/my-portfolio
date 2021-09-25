import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppController {
  Future<void> launchUrl(
      BuildContext context, String url, String errorText) async {
    try {
      await launch(url, forceWebView: true);
    } catch (e) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(errorText),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Ok'),
            )
          ],
        ),
      );
    }
  }
}
