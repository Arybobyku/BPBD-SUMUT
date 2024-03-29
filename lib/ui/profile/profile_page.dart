import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/loading/loading_custom.dart';
import 'package:bpbd/ui/core/snackbar/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.isLoading) {
            showLoading(context);
          }else{
            hideLoading(context);
          }

          state.optionFailureOrSuccess.match(
                (t) => t.fold(
                  (l) => errorSnackBar(context, l.toString()),
                  (r) {
                var storageService = locator<LocalStorageService>();
                storageService.clearPref();
                hideLoading(context);
                Get.offAllNamed(Routes.navigator);
              },
            ),
                () => null,
          );
        },
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomProfileCard(  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonRounded(
                      disable: [false],
                      text: "logout",
                      invert: true,
                      onPressed: () {
                        context
                            .read<AuthenticationBloc>()
                            .add(AuthenticationEvent.logout(context));
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
