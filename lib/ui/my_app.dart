import 'dart:async';

import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/landing/landing_bloc.dart';
import 'package:bpbd/bloc/logistik/logistik_bloc.dart';
import 'package:bpbd/bloc/peralatan/peralatan_bloc.dart';
import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/injection.dart';
import 'package:bpbd/routes.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../bloc/inventaris/inventaris_bloc.dart';

@injectable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiAccessor.create(),
          dispose: (_, ApiAccessor service) => service.client.dispose(),
        ),
        BlocProvider<LandingBloc>(
          create: (context) => getIt<LandingBloc>(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (context) => getIt<AuthenticationBloc>(),
        ),
        BlocProvider<InventarisBloc>(
          create: (context) => getIt<InventarisBloc>(),
        ),
        BlocProvider<LogistikBloc>(
          create: (context) => getIt<LogistikBloc>(),
        ),
        BlocProvider<PeralatanBloc>(
          create: (context) => getIt<PeralatanBloc>(),
        ),
      ],
      child: GetMaterialApp(
        navigatorKey: Get.key,
        debugShowCheckedModeBanner: false,
        color: ColorPalette.generalPrimaryColor,
        title: 'BPBD',
        initialRoute: Routes.navigator,
        getPages: Routes.newRoutes,
        builder: EasyLoading.init(),
        theme: ThemeData(
            primaryColor: ColorPalette.generalPrimaryColor,
            backgroundColor: ColorPalette.generalBackgroundColor,
            fontFamily: 'Poppins',
            splashColor: ColorPalette.generalPrimaryColor,
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Color(0xFFFF6501),
                    statusBarIconBrightness: Brightness.light,
                    statusBarBrightness: Brightness.light))),
      ),
    );
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint('Couldn\'t check connectivity status ${e.message}');
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    if (result == ConnectivityResult.none) {}
  }
}
