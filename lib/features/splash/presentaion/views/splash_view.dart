import 'package:flutter/material.dart';
import 'package:projectapp/core/database/cache/cache_helper.dart';

import 'package:projectapp/core/functions/navigation.dart';
import 'package:projectapp/core/services/service_locator.dart';
import 'package:projectapp/core/utiles/app_strings.dart';
import 'package:projectapp/core/utiles/apptext_style.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override

@override
void initState() {
 bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: "isOnBoardingVisited")??false;
 if(isOnBoardingVisited == true){
  delayedNavigate(context,"/signUp");
 }else{
  delayedNavigate(context,"/onBoarding");
 }
  super.initState(); // super.initState should be called at the beginning of initState

}


 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.appName,
        style: CustomTextStyles.pacifico400style64,
        ),
        
      ),
    );
  }
}
  void delayedNavigate(context,path) {
    Future.delayed(const Duration(seconds: 2), () {
      customReplacementNavigate(context,path);
    },
    );
  }
