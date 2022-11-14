import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => createLayout(context);

  Widget createLayout(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Image.asset(
            logo,
            height: 50,
            width: 50,
          ),
        ),
        body: Container(),
      );
}
