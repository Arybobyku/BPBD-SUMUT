import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/kota/kota_model.dart';
import 'package:bpbd/data/model/responseError/response_error.dart';
import 'package:bpbd/request/core/global_helper_request.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class KotaRequestBase {
  Future<Either<ResponseError, IList<KotaModel>>> getList(
    BuildContext context,
  );
}

@LazySingleton(as: KotaRequestBase)
class KotaRequest implements KotaRequestBase {
  @override
  Future<Either<ResponseError, IList<KotaModel>>> getList(BuildContext context)async{
    final response = await Provider.of<ApiAccessor>(context, listen: false)
        .getAllKota();

    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
              (data) => IList<KotaModel>.fromJson(
            data,
                (val) => KotaModel.fromJson(val as Map<String, dynamic>),
          ),
        );

        // if(_base.data.isEmpty){
        //   return left(const ResponseError.empty());
        // }
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
