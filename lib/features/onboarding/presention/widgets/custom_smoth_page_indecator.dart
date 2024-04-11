 import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndictor extends StatelessWidget {
  final  PageController controller;
 CustomSmoothPageIndictor({required this.controller});

  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(controller: controller, count: 3,
     effect:ScrollingDotsEffect(
      activeDotColor:MyColors.deepBrowen,
      dotHeight: 14,
      dotWidth: 14
     )
     );
  }}