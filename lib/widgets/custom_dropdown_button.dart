import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownButtonClass extends StatelessWidget {
  List<String> items;
  double width;
  CustomDropdownButtonClass(
      {super.key, required this.items, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(63, 63, 63, 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        onChanged: (value) {},
        value: items.first,
        items: items.map((element) {
          return DropdownMenuItem(
            value: element,
            child: Text(element),
          );
        }).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(63, 63, 63, 1),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
