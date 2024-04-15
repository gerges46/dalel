
import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_colors.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 8,top: 24),
      child: TextField(
        
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.poppins500style18,
          border: getBorderStyle(),
          enabledBorder:getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(borderRadius: 
  BorderRadius.circular(4),
  borderSide: BorderSide(color: MyColors.grey)
  );

}
