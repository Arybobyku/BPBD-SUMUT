import 'package:bpbd/helper/color_pallete.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
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

class LoadingDropdownContainer extends StatelessWidget {
  const LoadingDropdownContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65.0,
      margin: const EdgeInsets.only(bottom: 15.0, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: ColorPalette.generalGrey),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: const [
          Expanded(
            child: Text(
              'Loading...',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
