
import 'dart:convert';

import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    navigated(context);
    return Scaffold(
      backgroundColor: ColorPalette.generalPrimaryColor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              height: 200,
              width: 200,
            )
          ],
        ),
      )),
    );
  }

  navigated(BuildContext context) async {
    var storageService = locator<LocalStorageService>();
    var token = storageService.getStringFromPref("token");
    var me = storageService.getStringFromPref("meModel");

    await Future.delayed(const Duration(seconds: 5), () async {
      if (token == null) {
        Get.offAllNamed(Routes.loginPage);
      } else {
        var jsonDecodeMe = jsonDecode(me!);
        var meModel = MeModel.fromJson(jsonDecodeMe);
        context
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.initialize(context, meModel));

        var isOnBoarding = storageService.getBoolFromPref("isOnBoarding");
        if(isOnBoarding==null){
          storageService.saveToPref("isOnBoarding",true);
          Get.offAllNamed(Routes.onBoarding);
        }else{
          Get.offAllNamed(Routes.landing);
        }
      }
    });
  }
}
