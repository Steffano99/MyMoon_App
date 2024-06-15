// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  late List<String> values;
  late double width;
  CustomDropdownButton({super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromARGB(248, 1, 32, 20),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: Color.fromRGBO(38, 143, 103, 0.643),
        style: const TextStyle(color: Colors.white),
        underline: Container(),
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(value: e, child: Text(e));
          },
        ).toList(),
      ),
    );
  }
}
