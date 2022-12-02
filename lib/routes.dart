
import 'package:bpbd/ui/auth/login/login_page.dart';
import 'package:bpbd/ui/auth/register/register_page.dart';
import 'package:bpbd/ui/home/home_page.dart';
import 'package:bpbd/ui/landing/landing_page.dart';
import 'package:bpbd/ui/navigator/navigator_page.dart';
import 'package:bpbd/ui/webview/web_view_page.dart';
import 'package:get/get.dart';

class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String landing = "/landing";
  static const String homePage = "/homePage";
  static const String imageResultPage = "/imageResultPage";
  static const String webViewPage = "/webViewPage";
  static const String onBoardingPage = "/onBoardingPage";
  static const String loginPage = "/loginPage";
  static const String registerPage = "/registerPage";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:(){return const NavigatorPage();}),
    GetPage(name: landing, page:(){return const LandingPage();}),
    GetPage(name: homePage, page:(){return const HomePage();}),
    GetPage(name: webViewPage, page:(){return const WebViewPage();}),
    GetPage(name: loginPage, page:(){return const LoginPage();}),
    GetPage(name: registerPage, page:(){return const RegisterPage();}),
  ];
}