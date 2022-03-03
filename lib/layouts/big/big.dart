import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../style/font_style.dart';
import '../../widgets/widgets.dart';

class BigLayout extends StatelessWidget {
  const BigLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40.0,
            horizontal: 100,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      PiccolaButton(),
                      MyIconRowButton(),
                    ],
                  ),
                  const Align(alignment: Alignment.center, child: AppTitle()),
                ],
              ),
              const SizedBox(height: 100),
              SizedBox(
                height: height * 0.7,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.only(right: width * 0.1, bottom: 100),
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: width * 0.1),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.15),
                            Row(
                              children: const [
                                Expanded(child: AppLinkButton(android: true)),
                                SizedBox(width: 20),
                                Expanded(
                                  child: AppLinkButton(android: false),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(top: 30),
                                child: const Text(
                                  PAGE_TEXT,
                                  style: MyFontStyle.bigLayoutText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
