import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/routes.dart';

class HomeIdentificationSection extends StatelessWidget {
  const HomeIdentificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
            color: ColorPalette.generalSecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: const [
            Expanded(
              child: Text(
                "Identifikasi Penyakit Herpes",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(Icons.arrow_forward,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
