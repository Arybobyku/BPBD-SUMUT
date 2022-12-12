import 'dart:io';

import 'package:bpbd/setup_locator.dart';
import 'package:bpbd/simple_bloc_delegate.dart';
import 'package:bpbd/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logging/logging.dart';

import 'data/entity/user.dart';
import 'helper/my_http_overrides.dart';
import 'injection.dart';

Future<void> mainCommon() async {

  HttpOverrides.global = MyHttpOverrides();
  _setupLogging();
  await setUp();

  setupLocator().then((value) {
    Bloc.observer = getIt<SimpleBlocObserver>();
    runApp(getIt<MyApp>());
  });
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
