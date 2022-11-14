import 'package:flutter/material.dart';
import 'package:foreantech/screens/guest_screen.dart';
import 'package:foreantech/screens/tenent_screen.dart';
import 'package:get/get.dart';

import '../styles/app_styles.dart';
import '../utils/app_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => createLayout(context);

  Widget createLayout(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                logo,
                height: 132,
                width: 90,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      welcomeToFnfColiving,
                      style: h1TextWithWhiteColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      loggingInAs,
                      style: h2TextWithWhiteColor,
                    ),
                    CardWidget(
                      imageName: account,
                      text: guest,
                      onClicked: () {
                        Get.to(() => const GuestScreen());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CardWidget(
                      imageName: personAtHome,
                      text: tenent,
                      onClicked: () {
                        Get.to(() => const TenentScreen());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class CardWidget extends StatelessWidget {
  final String imageName;
  final String text;
  final VoidCallback onClicked;
  const CardWidget({
    Key? key,
    required this.imageName,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: const BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Image.asset(
                  imageName,
                  width: 90,
                  height: 90,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: h2TextWithBgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
