import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/bloc/home/home_bloc.dart';
import 'package:bpbd/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    return Container(
                      height: 40,
                      padding: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: ColorPalette.generalPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Medan",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    );
                  },
                ),
                const CustomProfileCard(),
                CarouselSlider(
                  options: CarouselOptions(height: 160.0),
                  items: [1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: const BoxDecoration(
                                color: ColorPalette.generalPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: const Text(
                              '',
                              style: TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
