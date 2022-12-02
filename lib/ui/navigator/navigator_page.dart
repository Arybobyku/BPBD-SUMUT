import 'package:bpbd/data/constants/constants.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

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
    var name = storageService.getStringFromPref(Constants.userName);

    await Future.delayed(const Duration(seconds: 5), () async {
      if(name==null){
        Get.offAllNamed(Routes.loginPage);
      }else{
        Get.offAllNamed(Routes.landing);
      }

    });

  }
}
