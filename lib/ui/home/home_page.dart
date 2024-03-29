import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/banner/banner_bloc.dart';
import 'package:bpbd/bloc/logistik/logistik_bloc.dart';
import 'package:bpbd/bloc/peralatan/peralatan_bloc.dart';
import 'package:bpbd/bloc/permintaan/permintaan_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../core/customCarousel/carousel_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.read<AuthenticationBloc>().state.token);
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<LogistikBloc>().add(
                LogistikEvent.watchAll(
                  context,
                  context.read<AuthenticationBloc>().state.meModel!.idKota!,
                ),
              );

          context.read<PeralatanBloc>().add(
                PeralatanEvent.watchAll(
                  context,
                  context.read<AuthenticationBloc>().state.meModel!.idKota!,
                ),
              );

          context.read<BannerBloc>().add(
                BannerEvent.watchAll(
                  context,
                  context.read<AuthenticationBloc>().state.meModel!.idKota!,
                ),
              );

          context.read<PermintaanBloc>().add(
                PermintaanEvent.watchAll(
                  context,
                  context.read<AuthenticationBloc>().state.meModel!.id!,
                ),
              );
        },
        child: ListView(
          children: const [
            CustomHeader(),
            CustomProfileCard(),
            CustomCaraousel(),
            SizedBox(height: 20),
            HomeMenuWidget(),
            SizedBox(height: 20),
            InventarisHomeWIdget(),
            SizedBox(height: 20),
            PermintaanHomeWIdget(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class HomeMenuWidget extends StatelessWidget {
  const HomeMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.5,
        ),
        children: [
          MenuWidget(
            pathAsset: 'images/peralatan.png',
            name: 'Peralatan',
            onTap: () {
              Get.toNamed(Routes.peralatanPage);
            },
          ),
          MenuWidget(
            pathAsset: 'images/logistik.png',
            name: 'Logsitik',
            onTap: () {
              Get.toNamed(Routes.logistikPage);
            },
          ),
          MenuWidget(
            pathAsset: 'images/Edit.png',
            name: 'Permintaan',
            onTap: () {
              Get.toNamed(Routes.reportPage);
            },
          ),
          MenuWidget(
            pathAsset: 'images/Profile.png',
            name: 'Profil',
            onTap: () {
              Get.toNamed(Routes.profilePage);
            },
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.pathAsset,
    required this.name,
    this.onTap,
  }) : super(key: key);

  final String pathAsset;
  final String name;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              pathAsset,
              height: 35,
              width: 35,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                color: ColorPalette.generalSecondaryColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}

class InventarisHomeWIdget extends StatelessWidget {
  const InventarisHomeWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Inventaris",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Peralatan",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("jumlah peralatan", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                BlocBuilder<PeralatanBloc, PeralatanState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (peralatan, failureOrSuccees) => GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.peralatanPage);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: ColorPalette.generalSoftRed,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Text(
                                peralatan.length.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: ColorPalette.generalRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      orElse: () => const CircularProgressIndicator(),
                    );
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Logistik",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Jumlah Logistik", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                BlocBuilder<LogistikBloc, LogistikState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loaded: (logistik, failureOrSuccess) => GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.logistikPage);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: ColorPalette.generalSoftGreen,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      logistik.length.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: ColorPalette.generalIndigo,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        orElse: () => const CircularProgressIndicator());
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PermintaanHomeWIdget extends StatelessWidget {
  const PermintaanHomeWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.permintaanDetail),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Permintaan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Permintaan",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Jumlah Permintaan",
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  BlocBuilder<PermintaanBloc, PermintaanState>(
                    builder: (context, state) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: ColorPalette.generalSoftGreen,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              state.listPermintaan.length.toString() ?? "0",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: ColorPalette.generalIndigo,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
