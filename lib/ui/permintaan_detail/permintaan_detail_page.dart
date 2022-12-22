import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/permintaan/permintaan_bloc.dart';
import 'package:bpbd/data/model/permintaan/permintaan.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:bpbd/ui/core/empty/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PermintaanDetailPage extends StatefulWidget {
  const PermintaanDetailPage({Key? key}) : super(key: key);

  @override
  State<PermintaanDetailPage> createState() => _PermintaanDetailPageState();
}

class _PermintaanDetailPageState extends State<PermintaanDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: BlocBuilder<PermintaanBloc, PermintaanState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                const CustomHeader(),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context.read<PermintaanBloc>().add(
                            PermintaanEvent.watchAll(
                              context,
                              context
                                  .read<AuthenticationBloc>()
                                  .state
                                  .meModel!
                                  .id!,
                            ),
                          );
                    },
                    child: state.listPermintaan.isEmpty
                        ? ListView(
                            children: const [
                              EmptyWidget(
                                message: "Data Permintaan Kosong",
                              ),
                            ],
                          )
                        : ListView.builder(
                            itemCount: state.listPermintaan.length,
                            itemBuilder: (context, index) {
                              var item = state.listPermintaan[index];
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            "Kab/Kota",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            item.kabupaten ?? "-",
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(height: 1),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            "Kecamatan",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            item.kecamatan ?? "-",
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(height: 1),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            "Kelurahan",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            item.kelurahan ?? "-",
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(height: 1),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            "Alamat",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            item.alamat ?? "-",
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(height: 1),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            "Jenis Bencana",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            item.jenisBencana ?? "-",
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(height: 1),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Barang ",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    ListView.builder(
                                      shrinkWrap:true,
                                      itemCount: item.permintaanBarang?.length ?? 0,
                                      itemBuilder: (context, index) {
                                        var brg = item.permintaanBarang?[index];
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                    "Nama",
                                                    style: TextStyle(fontSize: 14),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    brg?.nama ?? "-",
                                                    textAlign: TextAlign.right,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                    "Qty",
                                                    style: TextStyle(fontSize: 14),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    brg?.jumlah.toString() ?? "-",
                                                    textAlign: TextAlign.right,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Divider(height: 1),
                                            const SizedBox(height: 10),
                                          ],
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
