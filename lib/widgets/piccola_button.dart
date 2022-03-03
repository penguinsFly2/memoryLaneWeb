import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../style/font_style.dart';

class PiccolaButton extends StatelessWidget {
  const PiccolaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launch("https://piccola-app.com/");
      },
      child: const Text("پیکولا", style: MyFontStyle.green20),
    );
  }
}
