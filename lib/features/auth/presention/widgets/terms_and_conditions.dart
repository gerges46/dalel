
import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_strings.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';
import 'package:projectapp/features/auth/presention/widgets/custom_check_box.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: CustomTextStyles.poppins400style12),
            TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyles.poppins400style12
                    .copyWith(decoration: TextDecoration.underline)),
          ]),
        )
      ],
    );
  }
}
