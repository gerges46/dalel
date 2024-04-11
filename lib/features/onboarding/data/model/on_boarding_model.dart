import 'package:projectapp/core/utiles/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: Assets.imagesFrame1,
      title: "Explore The history with Dalel in a smart way",
      subTitle:
          "Using our app’s history libraries you can find many historical periods"),
  OnBoardingModel(
      imagePath: Assets.imagesOnboarding2,
      title: "From every placeon earth",
      subTitle: "A big variety of ancient places from all over the world"),
  OnBoardingModel(
      imagePath: Assets.imagesOnboarding3,
      title: "Using modern AI technology for better user experienc",
      subTitle:
          "AI provide recommendations and helpsyou to continue the search journey"),
];
