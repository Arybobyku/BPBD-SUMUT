import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/data/model/kota/kota_model.dart';
import 'package:bpbd/data/model/me/me_model.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/routes.dart';
import 'package:bpbd/ui/core/customButton/button_rounded.dart';
import 'package:bpbd/ui/core/customFormField/custom_form_field.dart';
import 'package:bpbd/ui/core/custom_dropdown/custom_dropdown.dart';
import 'package:bpbd/ui/core/loading/loading_custom.dart';
import 'package:bpbd/ui/core/snackbar/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../bloc/kota/kota_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  MeModel meModel = const MeModel();
  KotaModel? kota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.isLoading) {
            showLoading(context);
          } else {
            hideLoading(context);
          }

          state.optionFailureOrSuccess.match(
            (t) => t.fold(
              (l) {
                errorSnackBar(
                  context,
                  l.maybeWhen(
                      orElse: () => "something went wrong",
                      serverError: (error) => error.toString()),
                );
              },
              (r) {
                successSnackBar(context,
                    "Berhasil mendaftar akun baru, harap hubungi admin untuk verifikasi akun");
                Get.offAllNamed(Routes.loginPage);
              },
            ),
            () => null,
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: ColorPalette.generalPrimaryColor,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60),
                                bottomLeft: Radius.circular(60),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              children: [
                                const SizedBox(height: 50),
                                const Text(
                                  "Register Your Account",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 30),
                                InputFieldRounded(
                                  hint: "Nama",
                                  label: "nama",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(name: val);
                                  },
                                  secureText: false,
                                ),
                                InputFieldRounded(
                                  hint: "Email",
                                  label: "Email",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(email: val);
                                  },
                                  secureText: false,
                                ),
                                InputFieldRounded(
                                  hint: "Password",
                                  label: "Password",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(password: val);
                                  },
                                  secureText: true,
                                ),
                                InputFieldRounded(
                                  hint: "NIP",
                                  label: "NIP",
                                  onChange: (val) {
                                    meModel = meModel.copyWith(nip: val);
                                  },
                                  secureText: false,
                                ),
                                InputFieldRounded(
                                  hint: "No Handphone",
                                  label: "No Handphone",
                                  keyboardType: TextInputType.phone,
                                  onChange: (val) {
                                    meModel = meModel.copyWith(noHp: val);
                                  },
                                  secureText: false,
                                ),
                                BlocBuilder<KotaBloc, KotaState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      loaded: (listKota, failureOrSuccess) {
                                        return DropdownContainer(
                                          hint: "Kabupaten/Kota",
                                          value:kota?.namaKota!=null? kota?.namaKota:listKota.first.namaKota,
                                          onChanged: (val) {
                                            kota = listKota.firstWhere(
                                              (element) =>
                                                  element.namaKota == val,
                                            );

                                            meModel = meModel.copyWith(
                                              idKota: kota?.id,
                                              kotaModel: kota
                                            );
                                            setState(() {});
                                          },
                                          items: listKota
                                              .map((e) => e.namaKota)
                                              .toList(),
                                        );
                                      },
                                      orElse: () =>
                                          const LoadingDropdownContainer(),
                                    );
                                  },
                                ),
                                const SizedBox(height: 20),
                                ButtonRounded(
                                  disable: [
                                    meModel.name == null,
                                    meModel.email == null,
                                    meModel.password == null,
                                    meModel.nip == null,
                                    meModel.noHp == null,
                                    meModel.idKota == null,
                                  ],
                                  text: "Register",
                                  onPressed: () {
                                    context.read<AuthenticationBloc>().add(
                                          AuthenticationEvent.register(
                                            context,
                                            meModel,
                                          ),
                                        );
                                  },
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "images/logo_sumut.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(width: 15),
                                    Image.asset(
                                      "images/logo.png",
                                      height: 50,
                                      width: 50,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
