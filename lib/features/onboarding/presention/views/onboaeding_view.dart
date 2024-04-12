import 'package:flutter/material.dart';
import 'package:projectapp/core/functions/navigation.dart';

import 'package:projectapp/features/onboarding/presention/widgets/custom_nav_bar.dart';
import 'package:projectapp/features/onboarding/presention/widgets/get_buttons.dart';
import 'package:projectapp/features/onboarding/presention/widgets/onboarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
/*       child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0), */
      child: Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 40,
            ),
            CustomNavBar(
              onTap: () {
                customReplacementNavigate(context, "/signUp");
              },
            ),
            OnBoardingWidgetBody(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _controller,
            ),
            SizedBox(
              height: 88,
            ),
           GetButtons(currentIndex: currentIndex, controller: _controller),
            SizedBox(
              height: 17,
            ),
          ],
        ),
      ),
      //),
    );
  }
}