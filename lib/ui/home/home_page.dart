import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/bloc/home/home_bloc.dart';
import 'package:bpbd/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:bpbd/ui/core/cutom_header/custom_header.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/customCarousel/carousel_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) => state.optionFailureOrCase.match(
          (t) => t.fold(
            (l) {},
            (r) {},
          ),
          () {},
        ),
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {},
            child: ListView(
              children: [
                const CustomHeader(),
                const CustomProfileCard(),
                const CustomCaraousel(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bantuan",
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
                                  Text("Kota Binjai",
                                      style: TextStyle(fontSize: 16)),
                                  SizedBox(height: 4),
                                  Text("Banjir",
                                      style: TextStyle(fontSize: 12)),
                                  SizedBox(height: 4),
                                  Text("12 Januari 2021",
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: ColorPalette.generalSoftRed,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: ColorPalette.generalRed,
                                    ),
                                  ),
                                  Text(
                                    "Item",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalette.generalRed,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Berita",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
