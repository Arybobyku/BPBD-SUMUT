import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:bpbd/simple_bloc_delegate.dart';
import 'package:bpbd/ui/my_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'data/entity/user.dart';
import 'helper/my_http_overrides.dart';
import 'injection.dart';
import 'package:logger/logger.dart';

Future<void> mainCommon() async {
  // BlocOverrides.runZoned(
  //   () async {
  //     await setUp();
  //     return runApp(getIt<MyApp>());
  //   },
  //   blocObserver: SimpleBlocObserver(Logger()),
  // );

  HttpOverrides.global = MyHttpOverrides();
  await setUp();


  setupLocator().then((value) {
    runApp(getIt<MyApp>());
  });
}
Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  configureInjection();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}
