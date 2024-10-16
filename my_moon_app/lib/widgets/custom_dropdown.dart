import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatefulWidget {
  late List<String> values;
  late double width;
  CustomDropdownButton({super.key, required this.values, required this.width});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  late String selectedValue;
  @override
  void initState() {
    super.initState();
    selectedValue = widget.values.first;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      width: widget.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(248, 1, 32, 20),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: const Color.fromRGBO(38, 143, 103, 0.643),
        style: const TextStyle(color: Colors.white),
        underline: Container(),
        value: selectedValue,
        onChanged: (values) {
          setState(() {
            selectedValue = values!;
          });
        },
        items: widget.values.map(
          (e) {
            return DropdownMenuItem(value: e, child: Text(e));
          },
        ).toList(),
      ),
    );
  }
}
