import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/peralatan/peralatan_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeralatanPage extends StatefulWidget {
  const PeralatanPage({Key? key}) : super(key: key);

  @override
  State<PeralatanPage> createState() => _PeralatanPageState();
}

class _PeralatanPageState extends State<PeralatanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: BlocBuilder<PeralatanBloc, PeralatanState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                const CustomHeader(),
                Expanded(
                  child: state.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error) => Center(child: Text(error)),
                    loaded: (invetarisList, optionFailureOrDiseases) =>
                        RefreshIndicator(
                          onRefresh: () async{
                            context.read<PeralatanBloc>().add(
                              PeralatanEvent.watchAll(
                                context,
                                context.read<AuthenticationBloc>().state.meModel!.idKota!,
                              ),
                            );
                          },
                          child: ListView.builder(
                              itemCount: invetarisList.length,
                              itemBuilder: (context, index) {
                                var inventaris = invetarisList[index];
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
                                      CachedNetworkImage(
                                        imageUrl: inventaris.foto ?? "",
                                        height: 200,
                                        width: double.infinity,
                                        imageBuilder: (context, imageProvider) =>
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(20)),
                                                image: DecorationImage(
                                                    image: imageProvider,
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        inventaris.nama ?? "-",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "${inventaris.jumlah ?? "-"} Barang",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
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
