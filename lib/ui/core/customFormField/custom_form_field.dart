import 'package:bpbd/helper/color_pallete.dart';
import 'package:flutter/material.dart';

class InputFieldRounded extends StatelessWidget {
  final String hint;
  final String? initialValue;
  final String label;
  final ValueChanged<String> onChange;
  final Widget? suffixIcon;
  final bool secureText;
  final TextInputType keyboardType;
  final String? errortext;
  final FormFieldValidator? validatorCheck;

  const InputFieldRounded(
      {Key? key,
      required this.hint,
      required this.label,
      required this.onChange,
      this.validatorCheck,
      this.initialValue,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.errortext,
      required this.secureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: ColorPalette.generalGrey)),
      child: TextFormField(
        initialValue: initialValue,
        validator: validatorCheck,
        onChanged: onChange,
        obscureText: secureText,
        cursorColor: ColorPalette.generalPrimaryColor,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            errorText: errortext,
            filled: false,
            hoverColor: ColorPalette.generalPrimaryColor,
            hintStyle: const TextStyle(color: ColorPalette.generalPrimaryColor),
            labelText: label,
            floatingLabelStyle:
                const TextStyle(color: ColorPalette.generalPrimaryColor),
            suffixIcon: suffixIcon,
            focusColor: ColorPalette.generalPrimaryColor,
            border: InputBorder.none),
      ),
    );
  }
}
