
import 'dart:convert';

import 'package:bpbd/data/core/base_response.dart';

String parsedError(String responseBody){
  Map<String, dynamic> responseDecode = jsonDecode(responseBody);
  final _base = BaseResponse.fromJson(
    responseDecode,
        (data) => data,
  );

  return _base.meta.message;
}

parsedSuccess(String responseBody, Function(Object? json) fromJsonT){
  Map<String, dynamic> responseDecode = jsonDecode(responseBody);
  BaseResponse.fromJson(
    responseDecode,
        (data) => fromJsonT(data),
  );
}