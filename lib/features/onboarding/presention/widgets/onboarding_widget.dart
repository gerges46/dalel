import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_assets.dart';

import 'package:projectapp/core/utiles/apptext_style.dart';
import 'package:projectapp/features/onboarding/presention/widgets/custom_smoth_page_indecator.dart';


class OnBoardingWidgetBody extends StatelessWidget{
  final PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
 return Expanded(
   child: PageView.builder(
    controller: _controller,
    itemCount: 3,
 itemBuilder: (context,index){
    return Column(
 children: [
    Image.asset(Assets.imagesFrame1),
    const SizedBox(height: 24,),
    CustomSmoothPageIndictor(controller: _controller),
        SizedBox(height: 32,),
    Text("Explore The history with Dalel in a smart way",style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),),
    SizedBox(height: 16,),
Text("Using our app’s history libraries you can find many historical periods", style: CustomTextStyles.poppins300style16,),
 ],
    );
   }
   ),
 );
  }}
 
