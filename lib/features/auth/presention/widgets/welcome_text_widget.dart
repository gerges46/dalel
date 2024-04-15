
import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';

class WElcomeTextWidget extends StatelessWidget {
  const WElcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
        child: Text(
      text,
      style: CustomTextStyles.pacifico600style28,
    ));
  }
}