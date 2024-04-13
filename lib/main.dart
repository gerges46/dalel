

import 'package:flutter/material.dart';

import 'package:projectapp/core/database/cache/cache_helper.dart';
import 'package:projectapp/core/routes/app_router.dart';
import 'package:projectapp/core/services/service_locator.dart';

import 'package:projectapp/core/utiles/app_colors.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
 await getIt<CacheHelper>().init();
  runApp(const Dalel());
}
class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.offWhite,

      ),
      debugShowCheckedModeBanner: false,
     routerConfig: router,
    );
  }
}
