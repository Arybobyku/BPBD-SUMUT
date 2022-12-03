import 'package:bpbd/helper/color_pallete.dart';
import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool invert;
  final bool disabled;
  final Icon? icon;

  const ButtonRounded({
    Key? key,
    this.onPressed,
    required this.text,
    this.invert = false,
    this.disabled = false,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: invert
              ? ColorPalette.generalPrimaryColor
              : ColorPalette.generalSecondaryColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              icon!=null?Row(
                children: [
                  icon!,
                  const SizedBox(width: 10),
                ],
              ):const SizedBox(),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
