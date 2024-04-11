

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectapp/core/routes/app_router.dart';
import 'package:projectapp/core/utiles/app_assets.dart';
import 'package:projectapp/core/utiles/app_colors.dart';
import 'package:projectapp/features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const Dalel());
}
class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.offWhite
      ),
      debugShowCheckedModeBanner: false,
     routerConfig: router,
    );
  }
}
