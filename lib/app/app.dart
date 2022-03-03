import 'package:flutter/material.dart';

import '../layouts/layout.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth > 1100) {
            return const BigLayout();
          } else if (constraint.maxWidth > 600) {
            return const Medium();
          } else {
            return const Small();
          }
        },
      ),
    );
  }
}
