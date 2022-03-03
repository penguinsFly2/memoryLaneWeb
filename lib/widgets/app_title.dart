import 'package:flutter/material.dart';

import '../style/font_style.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('MemoryLane', style: MyFontStyle.green20),
        Text("1.0.0", style: MyFontStyle.verySmall)
      ],
    );
  }
}
