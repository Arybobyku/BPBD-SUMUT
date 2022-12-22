import 'package:bpbd/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:injectable/injectable.dart';

import 'main_common.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // FlutterServicesBinding.ensureInitialized();

  configureInjection(Environment.prod);
  await mainCommon();
}
