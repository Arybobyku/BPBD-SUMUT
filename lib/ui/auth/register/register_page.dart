import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                              "Register Your Account",
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
                            InputFieldRounded(
                              hint: "Password",
                              label: "Password",
                              onChange: (val) {},
                              secureText: true,
                            ),
                            InputFieldRounded(
                              hint: "Confirm Password",
                              label: "Confirm Password",
                              onChange: (val) {},
                              secureText: true,
                            ),
                            InputFieldRounded(
                              hint: "NIP",
                              label: "NIP",
                              onChange: (val) {},
                              secureText: false,
                            ),
                            InputFieldRounded(
                              hint: "No Handphone",
                              label: "No Handphone",
                              onChange: (val) {},
                              secureText: false,
                            ),
                            InputFieldRounded(
                              hint: "Kabupaten/Kota",
                              label: "Kabupaten/Kota",
                              onChange: (val) {},
                              secureText: false,
                            ),
                            const SizedBox(height: 20),
                            ButtonRounded(
                              text: "Register",
                              onPressed: () {},
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(height: 20),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
