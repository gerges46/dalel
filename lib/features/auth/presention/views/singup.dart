import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_colors.dart';
import 'package:projectapp/core/utiles/app_strings.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';
import 'package:projectapp/core/widgets/custom_btn.dart';
import 'package:projectapp/features/auth/presention/widgets/custom_text_field.dart';
import 'package:projectapp/features/auth/presention/widgets/terms_and_conditions.dart';
import 'package:projectapp/features/auth/presention/widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 152),
          ),
          SliverToBoxAdapter(
            child: WElcomeTextWidget(text: AppStrings.welcome),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(labelText: AppStrings.fristName),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(labelText: AppStrings.lastName),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(labelText: AppStrings.emailAddress),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(labelText: AppStrings.password),
          ),
          SliverToBoxAdapter(
            child: TermsAndConditionWidget(),
          ),
          SliverToBoxAdapter(
            child:SizedBox(height: 88,),
          ),

          SliverToBoxAdapter(
          
            child: CustomBtn(
                onPressed:(){},
              text: AppStrings.signUp,),
          ),
            SliverToBoxAdapter(
            child:SizedBox(height: 16,),
          ),

          SliverToBoxAdapter(
          
            child: HaveAnAccountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signUp,),
            
            ),
        ],
      ),
    ));
  }
}
class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key, required this.text1, required this.text2});
  final String text1,text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text1,style: CustomTextStyles.poppins400style12),
        TextSpan(text:text2,style: CustomTextStyles.poppins400style12.copyWith(color: MyColors.lightGrey)),
      ])),
    );
  }
}