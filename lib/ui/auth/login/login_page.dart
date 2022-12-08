import 'dart:convert';

import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:bpbd/ui/core/loading/loading_custom.dart';
import 'package:bpbd/ui/core/snackbar/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var storageService = locator<LocalStorageService>();
  String email = "";
  String password = "";

  MeModel meModel = const MeModel();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.isLoading) {
          showLoading(context);
        } else {
          hideLoading(context);
        }

        state.optionFailureOrSuccess.match(
          (t) => t.fold(
            (l) {
              errorSnackBar(
                context,
                l.maybeWhen(
                    orElse: () => "something went wrong",
                    serverError: (error) => error.toString()),
              );
            },
            (r) {
              storageService.saveToPref("token", r.accessToken);
              storageService.saveToPref("tokenType", r.tokenType);
              storageService.saveToPref(
                  "meModel", jsonEncode(r.meModel!.toJson()));
              hideLoading(context);
              Get.offAllNamed(Routes.landing);
            },
          ),
          () => null,
        );
      },
      builder: (context, state) {
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
                                  "Hey There,",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 30),
                                InputFieldRounded(
                                  hint: "Email",
                                  label: "Email",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(email: val);
                                  },
                                  secureText: false,
                                ),
                                const SizedBox(height: 10),
                                InputFieldRounded(
                                  hint: "Password",
                                  label: "Password",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(password: val);
                                  },
                                  secureText: true,
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
                                    context.read<AuthenticationBloc>().add(
                                          AuthenticationEvent.login(
                                            context,
                                            meModel,
                                          ),
                                        );
                                  },
                                  icon: const Icon(
                                    Icons.login,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                GestureDetector(
                                  onTap: () {
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
        );
      },
    );
  }

}
