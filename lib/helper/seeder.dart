import 'dart:convert';

import 'package:bpbd/data/model/key_value/key_value.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/model/kota/kota_model.dart';

List<KotaModel> listKota = const [
  KotaModel(id: 1, idZona: 1, namaKota: "Medan", kodeKota: "1271"),
  KotaModel(id: 2, idZona: 1, namaKota: "Binjai", kodeKota: "1275"),
  KotaModel(id: 3, idZona: 1, namaKota: "Tebing Tinggi", kodeKota: "1276"),
  KotaModel(id: 4, idZona: 1, namaKota: "Pematang Siantar", kodeKota: "1272"),
  KotaModel(id: 5, idZona: 1, namaKota: "Tanjung Balai", kodeKota: "1274"),
  KotaModel(id: 6, idZona: 1, namaKota: "Asahan", kodeKota: "M1"),
  KotaModel(
      id: 7, idZona: 1, namaKota: "Labuhan Batu Selatan", kodeKota: "1222"),
  KotaModel(id: 8, idZona: 1, namaKota: "Padang Lawas Utara", kodeKota: "1221"),
  KotaModel(id: 9, idZona: 1, namaKota: "Padang Sidempuan", kodeKota: "1277"),
  KotaModel(id: 10, idZona: 1, namaKota: "Mandailing Natal", kodeKota: "1213"),
];

List<KeyValue> kabupaten = [];

Future readKabupatenFile(BuildContext context) async {
  final String response = await DefaultAssetBundle.of(context)
      .loadString('assets/data/kabupaten/12.json');
  List<dynamic> data = await json.decode(response);

  for (var element in data) {
    kabupaten.add(KeyValue(
      id: element['id'],
      name: element['nama'],
    ));
  }
}

Future<List<KeyValue>> readKecamatanFile(BuildContext context, String kode) async {
  final String response = await DefaultAssetBundle.of(context)
      .loadString('assets/data/kecamatan/$kode.json');
  List<dynamic> data = await json.decode(response);

  List<KeyValue> listKecamatan = [];

  for (var element in data) {
    listKecamatan.add(KeyValue(
      id: element['id'],
      name: element['nama'],
    ));
  }

  return listKecamatan;
}
