import 'package:flutter/material.dart';

import 'package:projectapp/core/utiles/app_strings.dart';

import 'package:projectapp/core/widgets/custom_btn.dart';
import 'package:projectapp/features/auth/presention/widgets/custom_text_field.dart';
import 'package:projectapp/features/auth/presention/widgets/have_an_acount_widget.dart';
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
          
            child: HaveAnAccountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn,),
            
            ),
        ],
      ),
    ));
  }
}