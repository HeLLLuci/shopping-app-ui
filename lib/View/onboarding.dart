import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_app/Components/blue_button.dart';
import 'package:shopping_app/View/homescreen.dart';
import 'package:shopping_app/config.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: BlueButton(title: "Next"),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        onDone: (){
          Get.to(()=>Homescreen());
        },
        pages: [
          PageViewModel(
            title: "Trusted by millions of people, part of one part",
            body:
            "",
            image: SvgPicture.asset(Paths.onboarding1Icons),
            decoration: PageDecoration(
              titleTextStyle: TextStyles.contentStyle,
              bodyTextStyle: TextStyle(fontSize: 0),
                imagePadding: EdgeInsets.only(top: 150.0)
            )
          ),
          PageViewModel(
            title: "Spend money abroad, and track your expense",
            body:
            "",
            image: SvgPicture.asset(Paths.onboarding2Icons),
              decoration: PageDecoration(
                  titleTextStyle: TextStyles.contentStyle,
                  bodyTextStyle: TextStyle(fontSize: 0),
                imagePadding: EdgeInsets.only(top: 150.0)
              )
          ),
          PageViewModel(
            title: "Receive Money From Anywhere In The World",
            body:
            "",
            image: SvgPicture.asset(Paths.onboarding3Icons),
              decoration: PageDecoration(
                  titleTextStyle: TextStyles.contentStyle,
                  bodyTextStyle: TextStyle(fontSize: 0),
                  imagePadding: EdgeInsets.only(top: 150.0)
              )
          ),
        ],
      ),
    );
  }
}
