import 'package:bpbd/helper/color_pallete.dart';
import 'package:flutter/material.dart';

import '../core/custom_profile_card/custom_profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomProfileCard(
                name: "Ary Boby Siregar",
                nip: "7294719471941",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
