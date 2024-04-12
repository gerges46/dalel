import 'package:flutter/material.dart';

import 'package:projectapp/core/functions/navigation.dart';
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
  super.initState(); // super.initState should be called at the beginning of initState
  delayedNavigate(context);
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
  void delayedNavigate(context) {
    Future.delayed(const Duration(seconds: 2), () {
      customReplacementNavigate(context,"/onBoarding");
    },
    );
  }
