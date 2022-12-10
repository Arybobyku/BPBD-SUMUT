import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/inventaris/inventaris_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/injection.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/cutom_header/custom_header.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  // var token = context.read<AuthenticationBloc>().state.token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<InventarisBloc>(
            create: (context) => getIt<InventarisBloc>()
              ..add(InventarisEvent.watchAll(context, context.read<AuthenticationBloc>().state.meModel!.idKota!)),
          )
        ],
        child: BlocBuilder<InventarisBloc, InventarisState>(
          builder: (context, state) {
            return SafeArea(
              child: state.maybeWhen(
                loading: ()=>const Center(child: CircularProgressIndicator(),),
                error: (error)=>Text(error),
                loaded:(invetarisList, optionFailureOrDiseases) =>
                    SingleChildScrollView(
                  child: Column(
                    children: [
                      const CustomHeader(),
                      const SizedBox(height: 20),
                      ListView.builder(
                          itemCount: invetarisList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var inventaris = invetarisList[index];
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:inventaris.foto??"",
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
                                    inventaris.namaInventory ?? "-",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "${inventaris.jumlahInventory ?? "-"} Unit",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
