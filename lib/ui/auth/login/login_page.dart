import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: ColorPalette.generalPrimaryColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              const SizedBox(height: 50),
                              const Text(
                                "Hey There,",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Welcome Back",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 30),
                              InputFieldRounded(
                                hint: "Email",
                                label: "Email",
                                onChange: (val) {},
                                secureText: false,
                              ),
                              const SizedBox(height: 10),
                              InputFieldRounded(
                                hint: "Password",
                                label: "Password",
                                onChange: (val) {},
                                secureText: false,
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorPalette.generalPurple),
                              ),
                              const SizedBox(height: 20),
                              ButtonRounded(
                                text: "Login",
                                onPressed: () {
                                  Get.toNamed(Routes.landing);
                                },
                                icon: const Icon(
                                  Icons.login,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(Routes.registerPage);
                                },
                                child: RichText(
                                  text: const TextSpan(
                                    text: "Don't have an account yet? ",
                                    style: TextStyle(
                                      color: ColorPalette.generalBlack,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Register",
                                        style: TextStyle(
                                          color: ColorPalette.generalPurple,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo_sumut.png",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 15),
                Image.asset(
                  "images/logo.png",
                  height: 50,
                  width: 50,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
