import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_colors.dart';

import 'package:projectapp/core/utiles/apptext_style.dart';
class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key,  this.color, required this.text,  this.onPressed});
final Color? color;
final String  text;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color??MyColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          
        ),
        onPressed:onPressed, child: Text(text,style: CustomTextStyles.poppins500style24.copyWith(fontSize: 18,color: MyColors.offWhite),)),
    );
  }
}