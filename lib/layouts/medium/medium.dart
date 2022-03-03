import 'package:flutter/material.dart';
import 'package:memory_lane_web/constants/constants.dart';
import 'package:memory_lane_web/style/font_style.dart';
import 'package:memory_lane_web/widgets/app_link_button.dart';
import 'package:memory_lane_web/widgets/app_title.dart';
import 'package:memory_lane_web/widgets/my_icon_button.dart';
import 'package:memory_lane_web/widgets/piccola_button.dart';

class Medium extends StatelessWidget {
  const Medium({Key? key}) : super(key: key);

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
                width: 300,
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 30),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    AppLinkButton(android: true),
                    SizedBox(width: 30),
                    AppLinkButton(android: false),
                  ],
                ),
              ),
              const SizedBox(
                child: Text(
                  PAGE_TEXT,
                  style: MyFontStyle.bigLayoutText,
                  textAlign: TextAlign.center,
                ),
                width: 500,
              ),
              const SizedBox(height: 100),
              const MyIconRowButton(),
            ],
          ),
        ),
      ),
    );
  }
}
