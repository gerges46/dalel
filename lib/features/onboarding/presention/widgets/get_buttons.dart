import 'package:flutter/material.dart';
import 'package:projectapp/core/functions/navigation.dart';
import 'package:projectapp/core/utiles/app_strings.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';
import 'package:projectapp/core/widgets/custom_btn.dart';
import 'package:projectapp/features/onboarding/data/model/on_boarding_model.dart';
import 'package:projectapp/features/onboarding/presention/views/onboarding.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              OnBoardingVisited();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
              onTap: () {
                OnBoardingVisited();
                customReplacementNavigate(context, "/signIn");
              },
              child: Text(
                AppStrings.loginNow,
                style: CustomTextStyles.poppins300style16
                    .copyWith(fontWeight: FontWeight.w400),
              )),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
        },
      );
    }
  }
}
