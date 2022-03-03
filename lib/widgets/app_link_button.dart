import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppLinkButton extends StatelessWidget {
  final bool android;

  const AppLinkButton({
    Key? key,
    required this.android,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(android ? "https://play.google.com/store/apps/details?id=com.aaesdev.memory_lane" : "");
      },
      child: Image.asset(
        android ? "assets/images/android.png" : "assets/images/apple.png",
      ),
    );
  }
}
