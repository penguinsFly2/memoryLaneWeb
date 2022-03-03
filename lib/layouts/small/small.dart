import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../style/font_style.dart';
import '../../widgets/widgets.dart';

class Small extends StatelessWidget {
  const Small({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40.0,
            left: width * 0.1,
            right: width * 0.1,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  AppTitle(),
                  Spacer(),
                  PiccolaButton(),
                ],
              ),
              const SizedBox(height: 100),
              SizedBox(
                child: Image.asset("assets/images/logo.png"),
                width: width * 0.4,
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      child: AppLinkButton(android: true),
                      height: 60,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: AppLinkButton(android: false),
                      height: 60,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: Text(
                  PAGE_TEXT,
                  style: MyFontStyle.smallLayoutText,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              const MyIconRowButton(),
            ],
          ),
        ),
      ),
    );
  }
}
