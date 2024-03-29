import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/authentication/authentication_model.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/request/core/global_helper_request.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../../data/model/responseError/response_error.dart';

abstract class AuthenticationRequest {
  Future<Either<ResponseError, AuthenticationModel>> login(
    BuildContext context,
    MeModel meModel,
  );

  Future<Either<ResponseError, AuthenticationModel>> register(
    BuildContext context,
    MeModel meModel,
  );

  Future<Either<ResponseError, AuthenticationModel>> logout(
    BuildContext context,
  );
}

@LazySingleton(as: AuthenticationRequest)
class AuthenticationRequestBase implements AuthenticationRequest {
  @override
  Future<Either<ResponseError, AuthenticationModel>> login(
      BuildContext context, MeModel meModel) async {
    final body = jsonEncode({
      "email": meModel.email,
      "password": meModel.password,
    });
    final response =
        await Provider.of<ApiAccessor>(context, listen: false).login(body);
    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => AuthenticationModel.fromJson(data as Map<String, dynamic>),
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

  @override
  Future<Either<ResponseError, AuthenticationModel>> register(
      BuildContext context, MeModel meModel) async {
    final body = jsonEncode({
      "name": meModel.name,
      "nip": meModel.email,
      "no_hp": meModel.noHp,
      "id_kota": meModel.idKota,
      "email": meModel.email,
      "password": meModel.password,
    });
    final response =
        await Provider.of<ApiAccessor>(context, listen: false).register(body);
    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => AuthenticationModel.fromJson(data as Map<String, dynamic>),
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

  @override
  Future<Either<ResponseError, AuthenticationModel>> logout(
      BuildContext context) async {
    final response =
        await Provider.of<ApiAccessor>(context, listen: false).logout();
    try {
      if (response.isSuccessful) {
        return right(const AuthenticationModel());
      } else {
        return left(ResponseError.serverError(message: response.bodyString));
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(ResponseError.serverError(message: e.toString()));
    }
  }
}
