import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: ColorPalette.generalPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Kelola Inventaris BPBD",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Aplikasi Pengelola Informasi Alat dan Inventaris BPBD Sumut",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("images/on_boarding.png"),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonRounded(
                  text: "Get Started",
                  onPressed: () {
                    Get.offAllNamed(Routes.landing);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
