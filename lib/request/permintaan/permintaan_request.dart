import 'dart:convert';

import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/core/base_response.dart';
import 'package:bpbd/data/model/permintaan/permintaan.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../../data/model/responseError/response_error.dart';
import '../core/global_helper_request.dart';

abstract class PermintaanRequestBase {
  Future<Either<ResponseError, IList<Permintaan>>> getList(
    BuildContext context,
    int idKota,
  );

  Future<Either<ResponseError, Permintaan>> submitPermintaan(
    BuildContext context,
    Permintaan permintaan,
      int idUser
  );
}

@LazySingleton(as: PermintaanRequestBase)
class PermintaanRequest implements PermintaanRequestBase {
  @override
  Future<Either<ResponseError, IList<Permintaan>>> getList(
    BuildContext context,
    int idKota,
  ) async {
    final response = await Provider.of<ApiAccessor>(context, listen: false)
        .getPermintaan(idKota);

    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => IList<Permintaan>.fromJson(
            data,
            (val) => Permintaan.fromJson(val as Map<String, dynamic>),
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

  @override
  Future<Either<ResponseError, Permintaan>> submitPermintaan(
      BuildContext context, Permintaan permintaan, int idUser) async{

    List<Map<String,dynamic>> barangs = [];
    
    permintaan.permintaanBarang!.forEach((element) {
      barangs.add({"nama":element.nama,"jumlah":element.jumlah});
    });
    
    final body = jsonEncode({
      "kabupaten": permintaan.kabupaten,
      "kecamatan": permintaan.kecamatan,
      "kelurahan": permintaan.kelurahan,
      "alamat": permintaan.alamat,
      "id_user": idUser,
      "jenis_bencana": permintaan.jenisBencana,
      "barangs": jsonEncode(barangs),
    });

    debugPrint(body);
    final response =
        await Provider.of<ApiAccessor>(context, listen: false).submitPermintaan(body);
    try {
      if (response.isSuccessful) {
        debugPrint(response.body.toString());

        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);

        final _base = BaseResponse.fromJson(
          responseDecode,
              (data) => Permintaan.fromJson(data as Map<String, dynamic>),
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
