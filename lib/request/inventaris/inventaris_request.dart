import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/case/case_model.dart';
import 'package:bpbd/data/model/inventaris/inventaris_model.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/request/core/global_helper_request.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class InventarisRequest {
  Future<Either<ResponseError, IList<InventarisModel>>> getList(
    BuildContext context,
    int idKota,
  );
}

@LazySingleton(as: InventarisRequest)
class InvetarisRequestBase extends InventarisRequest {
  @override
  Future<Either<ResponseError, IList<InventarisModel>>> getList(
      BuildContext context, int idKota) async {

    final response = await Provider.of<ApiAccessor>(context, listen: false)
        .getAllInventaris(idKota);

    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => IList<InventarisModel>.fromJson(
            data,
            (val) => InventarisModel.fromJson(val as Map<String, dynamic>),
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
