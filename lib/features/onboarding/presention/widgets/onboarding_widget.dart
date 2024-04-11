import 'package:flutter/material.dart';
import 'package:projectapp/core/utiles/app_assets.dart';

import 'package:projectapp/core/utiles/apptext_style.dart';
import 'package:projectapp/features/onboarding/presention/widgets/custom_smoth_page_indecator.dart';


class OnBoardingWidgetBody extends StatelessWidget{
  final PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
 return SizedBox(
  height: 500,
   child: PageView.builder(
    physics: BouncingScrollPhysics(),
    controller: _controller,
    itemCount: 3,
 itemBuilder: (context,index){
    return Column(
 children: [
 Container(
  height: 290,
  width: 343,
  decoration: BoxDecoration(
    image: DecorationImage(image:    AssetImage(Assets.imagesFrame1),
    fit: BoxFit.fill,
    ),
  ),
 ),
    const SizedBox(height: 24,),
    CustomSmoothPageIndictor(controller: _controller),
        SizedBox(height: 32,),
    Text("Explore The history with Dalel in a smart way",style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold,),
    textAlign: TextAlign.center,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    ),
    SizedBox(height: 16,),
Text("Using our app’s history libraries you can find many historical periods", style: CustomTextStyles.poppins300style16,),
 ],
    );
   }
   ),
 );
  }}
 
