import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_strings.dart';

import 'package:projectapp/core/widgets/custom_btn.dart';
import 'package:projectapp/features/onboarding/presention/widgets/custom_nav_bar.dart';
import 'package:projectapp/features/onboarding/presention/widgets/onboarding_widget.dart';


class OnBoardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
/*       child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0), */
        child: Scaffold(

          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CustomNavBar(),
              OnBoardingWidgetBody(),
              CustomBtn(text: AppStrings.next,),
              SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      //),
    );
  }
}
