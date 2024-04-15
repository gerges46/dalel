
import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        value: value,
        side: BorderSide(color: MyColors.grey),
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}
