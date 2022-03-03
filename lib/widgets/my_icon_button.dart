import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../style/my_colors.dart';
import '../style/piccola_icons.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final String link;
  const MyIconButton({
    Key? key,
    required this.icon,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: MyColors.green,
      ),
      onPressed: () {
        launch(link);
      },
    );
  }
}

class MyIconRowButton extends StatelessWidget {
  const MyIconRowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyIconButton(icon: Piccola.tiktok, link: "https://www.tiktok.com/@aaesdev?"),
        SizedBox(width: 15),
        MyIconButton(icon: Piccola.instagram, link: "https://www.instagram.com/aaesdev/"),
        SizedBox(width: 15),
        MyIconButton(icon: Piccola.twitter, link: "https://twitter.com/aaesdev"),
      ],
    );
  }
}
