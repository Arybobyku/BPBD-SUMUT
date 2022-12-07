import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bpbd/data/constants/constants.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/locatore_storage_service.dart';
import 'package:bpbd/setup_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: ColorPalette.generalWhite),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: ColorPalette.generalSoftGrey,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      state.meModel?.name ??"-",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.generalBlack,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Nip: ${state.meModel?.nip ?? "-"}",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
