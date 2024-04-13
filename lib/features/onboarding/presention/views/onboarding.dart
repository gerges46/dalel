import 'package:projectapp/core/database/cache/cache_helper.dart';
import 'package:projectapp/core/services/service_locator.dart';

void OnBoardingVisited(){
       getIt<CacheHelper>().saveData(key: "isOnBoardingVisited",value: true);
}