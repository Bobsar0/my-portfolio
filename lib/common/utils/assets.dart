import 'package:flutter/foundation.dart';

class Assets {
  // image paths on web don't need 'assets/' prefix
  static String get _prefix => !kIsWeb ? 'assets' : '';
  static String get backgroundImg => '$_prefix/images/background.jpeg';
  static String get linkedInIcon => '$_prefix/icons/linkedin.svg';
  static String get githubIcon => '$_prefix/icons/github.svg';
  static String get gitlabIcon => '$_prefix/icons/gitlab.svg';
}
