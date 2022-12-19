import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/peralatan/peralatan.dart';
import 'package:bpbd/request/core/global_helper_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../../data/model/responseError/response_error.dart';

abstract class PeralatanRequest {
  Future<Either<ResponseError, IList<Peralatan>>> getList(
      BuildContext context,
      int idKota,
      );
}

@LazySingleton(as: PeralatanRequest)
class PeralatanRequestBase implements PeralatanRequest{
  @override
  Future<Either<ResponseError, IList<Peralatan>>> getList(BuildContext context, int idKota) async{

    final response = await Provider.of<ApiAccessor>(context, listen: false)
        .getAllPeralatan(idKota);

    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
              (data) => IList<Peralatan>.fromJson(
            data,
                (val) => Peralatan.fromJson(val as Map<String, dynamic>),
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
