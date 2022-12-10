import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<AuthenticationBloc, AuthenticationState>(
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
            children: [
              const Icon(
                Icons.location_pin,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                state.meModel?.kotaModel?.namaKota ?? "-",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        );
      },
    );
  }
}
