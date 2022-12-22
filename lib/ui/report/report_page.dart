import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/permintaan/permintaan_bloc.dart';
import 'package:bpbd/data/model/key_value/key_value.dart';
import 'package:bpbd/data/model/permintaan/permintaan.dart';
import 'package:bpbd/data/model/permintaanItem/permintaan_item.dart';
import 'package:bpbd/helper/seeder.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:bpbd/ui/core/custom_dropdown/custom_dropdown.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:bpbd/ui/core/loading/loading_custom.dart';
import 'package:bpbd/ui/core/snackbar/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

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

  List<PermintaanItem> permintaanItem = [];
  Permintaan permintaan = const Permintaan();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    readKabupatenFile(context);
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocListener<PermintaanBloc, PermintaanState>(
            listener: (context, state) {
              if (state.loadingSubmit) {
                showLoading(context);
              } else {
                hideLoading(context);
              }

              state.optionSubmit.match(
                (t) => t.fold(
                  (l) {
                    hideLoading(context);
                    errorSnackBar(
                      context,
                      l.maybeWhen(
                          orElse: () => "something went wrong",
                          serverError: (error) => error.toString()),
                    );
                  },
                  (r) {
                    hideLoading(context);
                    successSnackBar(context, "Berhasil membuat permintaan");
                    Get.back();
                  },
                ),
                () => null,
              );
            },
            child: Column(
              children: [
                const CustomHeader(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Permintaan",
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
                        onChanged: (val) async {
                          String kode = listKota
                              .firstWhere((element) => element.namaKota == val)
                              .kodeKota;
                          listKecamatan =
                              await readKecamatanFile(context, kode);
                          kota = val;
                          permintaan = permintaan.copyWith(kabupaten: val);
                          setState(() {});
                        },
                        items: listKota.map((e) => e.namaKota).toList(),
                      ),
                      if (listKecamatan.isNotEmpty)
                        DropdownContainer(
                          hint: "Kecamatan",
                          value: listKecamatan.first.name,
                          onChanged: (val) {
                            kecamatan = val;
                            permintaan = permintaan.copyWith(kecamatan: val);
                            setState(() {});
                          },
                          items: listKecamatan.map((e) => e.name!).toList(),
                        ),
                      if (listKecamatan.isNotEmpty)
                        InputFieldRounded(
                          hint: "Kelurahan",
                          label: "Keluarahan",
                          onChange: (val) {
                            permintaan = permintaan.copyWith(kelurahan: val);
                            setState(() {});
                          },
                          secureText: false,
                        ),
                      InputFieldRounded(
                        hint: "Alamat Lengkap",
                        label: "Alamat Lengkap",
                        maxLines: 10,
                        minLines: 5,
                        onChange: (val) {
                          permintaan = permintaan.copyWith(alamat: val);
                          setState(() {});
                        },
                        secureText: false,
                      ),
                      InputFieldRounded(
                        hint: "Jenis Bencana",
                        label: "Jenis Bencana",
                        onChange: (val) {
                          permintaan = permintaan.copyWith(jenisBencana: val);
                          setState(() {});
                        },
                        secureText: false,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Kebutuhan Alat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          showBottomDialog();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: ColorPalette.generalPrimaryColor),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                'Tambah',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: permintaanItem.length,
                        itemBuilder: (context, index) {
                          var item = permintaanItem[index];
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  item.nama ?? "-",
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                )),
                                Text(
                                  "${item.jumlah} Qty",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      ButtonRounded(
                        text: "Kirim",
                        disable: [
                          permintaanItem.isEmpty,
                          permintaan.kabupaten == null,
                          permintaan.kecamatan == null,
                          permintaan.kelurahan == null,
                          permintaan.alamat == null,
                          permintaan.jenisBencana == null,
                        ],
                        onPressed: () {
                          permintaan = permintaan.copyWith(
                              permintaanBarang: permintaanItem);
                          context.read<PermintaanBloc>().add(
                                PermintaanEvent.submit(
                                    context,
                                    permintaan,
                                    context
                                        .read<AuthenticationBloc>()
                                        .state
                                        .meModel!
                                        .id!),
                              );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showBottomDialog() {
    PermintaanItem item = PermintaanItem();
    scaffoldKey.currentState!.showBottomSheet(
      (context) => Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Tambah Kebutuhan Alat",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            InputFieldRounded(
              hint: "Nama",
              label: "Nama",
              onChange: (val) {
                item = item.copyWith(nama: val);
              },
              secureText: false,
            ),
            const SizedBox(height: 10),
            InputFieldRounded(
              hint: "Jumlah",
              label: "Jumlah",
              keyboardType: TextInputType.number,
              onChange: (val) {
                item = item.copyWith(jumlah: int.parse(val));
              },
              secureText: false,
            ),
            ButtonRounded(
              text: "Simpan",
              disable: const [false],
              onPressed: () {
                permintaanItem.add(item);
                Navigator.pop(context);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
