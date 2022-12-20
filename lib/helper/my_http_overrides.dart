import 'dart:io';

import 'package:bpbd/routes.dart';
import 'package:get/get.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}


backToNavigator(){

  Get.offAllNamed(Routes.navigator);
}
