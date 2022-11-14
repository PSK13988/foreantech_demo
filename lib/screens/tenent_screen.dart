import 'package:flutter/material.dart';
import 'package:foreantech/styles/app_styles.dart';
import 'package:foreantech/utils/app_strings.dart';

class TenentScreen extends StatelessWidget {
  const TenentScreen({Key? key}) : super(key: key);

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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Card(
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
                          personAtHome,
                          width: 90,
                          height: 90,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        tenent,
                        style: h2TextWithBgColor,
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: bgColor, width: 2.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: bgColor, width: 2.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                                  const BorderSide(color: bgColor, width: 0.0),
                            ),
                            filled: true,
                            hintStyle: const TextStyle(color: bgColor),
                            hintText: 'Phone Number',
                            fillColor: Colors.white70),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: const BorderSide(
                                      color: bgColor,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(bgColor),
                              ),
                              child: const Text(
                                next,
                                style: h2TextWithWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
