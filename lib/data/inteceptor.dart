import 'dart:async';

import 'package:bpbd/locatore_storage_service.dart';
import 'package:chopper/chopper.dart';

import '../setup_locator.dart';

class MyRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    var storageService = locator<LocalStorageService>();
    var token = storageService.getStringFromPref("token");
    return applyHeader(request, 'Authorization', 'Bearer $token');
  }
}
