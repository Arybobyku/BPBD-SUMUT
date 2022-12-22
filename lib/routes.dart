
import 'package:bpbd/ui/auth/login/login_page.dart';
import 'package:bpbd/ui/auth/register/register_page.dart';
import 'package:bpbd/ui/home/home_page.dart';
import 'package:bpbd/ui/landing/landing_page.dart';
import 'package:bpbd/ui/logistik/logistik_page.dart';
import 'package:bpbd/ui/navigator/navigator_page.dart';
import 'package:bpbd/ui/onBoarding/on_boarding_page.dart';
import 'package:bpbd/ui/peralatan/peralatanPage.dart';
import 'package:bpbd/ui/permintaan_detail/permintaan_detail_page.dart';
import 'package:bpbd/ui/profile/profile_page.dart';
import 'package:bpbd/ui/report/report_page.dart';
import 'package:bpbd/ui/webview/web_view_page.dart';
import 'package:get/get.dart';

class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String landing = "/landing";
  static const String onBoarding = "/onBoarding";
  static const String homePage = "/homePage";
  static const String imageResultPage = "/imageResultPage";
  static const String webViewPage = "/webViewPage";
  static const String onBoardingPage = "/onBoardingPage";
  static const String loginPage = "/loginPage";
  static const String registerPage = "/registerPage";
  static const String profilePage = "/profilePage";
  static const String peralatanPage = "/peralatanPage";
  static const String logistikPage = "/logistikPage";
  static const String reportPage = "/reportPage";
  static const String permintaanDetail = "/permintaanDetail";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:(){return const NavigatorPage();}),
    GetPage(name: landing, page:(){return const LandingPage();}),
    GetPage(name: homePage, page:(){return const HomePage();}),
    GetPage(name: onBoarding, page:(){return const OnBoardingPage();}),
    GetPage(name: webViewPage, page:(){return const WebViewPage();}),
    GetPage(name: loginPage, page:(){return const LoginPage();}),
    GetPage(name: registerPage, page:(){return const RegisterPage();}),
    GetPage(name: profilePage, page:(){return const ProfilePage();}),
    GetPage(name: peralatanPage, page:(){return const PeralatanPage();}),
    GetPage(name: logistikPage, page:(){return const LogistikPage();}),
    GetPage(name: reportPage, page:(){return const ReportPage();}),
    GetPage(name: reportPage, page:(){return const ReportPage();}),
    GetPage(name: permintaanDetail, page:(){return const PermintaanDetailPage();}),
  ];
}