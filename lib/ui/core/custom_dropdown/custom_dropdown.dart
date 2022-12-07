import 'package:bpbd/helper/color_pallete.dart';
import 'package:flutter/material.dart';

class DropdownContainer extends StatelessWidget {
  const DropdownContainer({
    Key? key,
    required this.hint,
    required this.value,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  final String hint;
  final String? value;
  final List<String> items;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: ColorPalette.generalGrey),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: DropdownButton(
        value: value,
        isExpanded: true,
        underline: const SizedBox(),
        hint: Text(
          hint,
          style: const TextStyle(color: ColorPalette.generalDarkGrey),
        ),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
