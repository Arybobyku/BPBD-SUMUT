import 'package:bpbd/data/model/key_value/key_value.dart';
import 'package:bpbd/helper/seeder.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:bpbd/ui/core/custom_dropdown/custom_dropdown.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:flutter/material.dart';

import '../../helper/color_pallete.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {

  List<KeyValue> listKecamatan = [];

  String? kota = listKota.first.namaKota;
  String? kecamatan = null;
  KeyValue? kelurahan = null;
  @override
  Widget build(BuildContext context) {
    readKabupatenFile(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomHeader(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const Text(
                      "Laporan Bencana Alam",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Silahkan isi data dibawah ini",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 20),
                    DropdownContainer(
                      hint: "Kabupaten/Kota",
                      value: kota,
                      onChanged: (val) async{
                        String kode = listKota.firstWhere((element) => element.namaKota==val).kodeKota;
                       listKecamatan =  await readKecamatanFile(context,kode);
                        kota = val;
                        setState((){});
                      },
                      items: listKota.map((e) => e.namaKota).toList(),
                    ),
                    if(listKecamatan.isNotEmpty)
                    DropdownContainer(
                      hint: "Kecamatan",
                      value: listKecamatan.first.name,
                      onChanged: (val) {
                        kecamatan = val;
                        setState((){});
                      },
                      items: listKecamatan.map((e) => e.name!).toList(),
                    ),
                    if(listKecamatan.isNotEmpty)
                    InputFieldRounded(
                      hint: "Kelurahan",
                      label: "Keluarahan",
                      onChange: (val) {
                      },
                      secureText: false,
                    ),
                    InputFieldRounded(
                      hint: "Alamat Lengkap",
                      label: "Alamat Lengkap",
                      maxLines: 10,
                      minLines: 5,
                      onChange: (val) {
                      },
                      secureText: false,
                    ),
                    DropdownContainer(
                      hint: "Kabupaten/Kota",
                      value: "Banjir",
                      onChanged: (val) {
                        setState((){});
                      },
                      items: ["Banjir","Gempa","Gunung Meletus","Tsunami","Kebakaran"],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Kebutuhan Alat",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
