import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/logistik/logistik.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/core/global_helper_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class LogistikRequest {
  Future<Either<ResponseError, IList<Logistik>>> getList(
    BuildContext context,
    int idKota,
  );
}

@LazySingleton(as: LogistikRequest)
class LogistikRequestBase implements LogistikRequest {
  @override
  Future<Either<ResponseError, IList<Logistik>>> getList(
      BuildContext context, int idKota) async {
    final response = await Provider.of<ApiAccessor>(context, listen: false)
        .getAllLogistiks(idKota);

    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => IList<Logistik>.fromJson(
            data,
            (val) => Logistik.fromJson(val as Map<String, dynamic>),
          ),
        );

        return right(_base.data);
      } else {
        debugPrint(response.bodyString.toString());

        return left(ResponseError.serverError(
            message: parsedError(response.bodyString)));
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(ResponseError.serverError(message: e.toString()));
    }
  }
}
