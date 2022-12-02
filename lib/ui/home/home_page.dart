import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/provider/home/home_bloc.dart';
import 'package:bpbd/ui/core/custom_profile_card/custom_profile_card.dart';
import 'package:bpbd/ui/home/widget/home_activity_section.dart';
import 'package:bpbd/ui/home/widget/home_identification_section.dart';
import 'package:bpbd/ui/home/widget/home_information_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: FloatingActionButton(
          backgroundColor: ColorPalette.generalSecondaryColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) => state.optionFailureOrCase.match(
          (t) => t.fold(
            (l){},
            (r) {
            },
          ),
          (){},
        ),
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomProfileCard(),
                HomeInformationSection(),
                SizedBox(height: 20),
                HomeActivitySection(),
                SizedBox(height: 20),
                HomeIdentificationSection(),
                SizedBox(height: 150),
              ],
            ),
          );
        },
      ),
    );
  }
}
