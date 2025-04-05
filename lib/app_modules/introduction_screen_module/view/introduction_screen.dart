import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/first_page_module/view/first_screen.dart';
import 'package:serene_user_app/app_modules/introduction_screen_module/models/onboarding_page_model.dart';
import 'package:serene_user_app/app_modules/introduction_screen_module/widgets/onboarding_page_presenter.dart';
import 'package:serene_user_app/app_utils/app_local_storage.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          OnboardingPageModel(
            title: 'Find Your Perfect Stay',
            description:
                'Discover and book accommodations that match your style and preferences with ease.',
            imageUrl: 'assets/images/onboarding_image_1.png',
            bgColor: AppColors.onBoardingPage1Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Seamless Booking Experience',
            description:
                'Secure your stay effortlessly with a smooth and user-friendly booking process.',
            imageUrl: 'assets/images/onboarding_image_2.png',
            bgColor: AppColors.onBoardingPage2Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Work and Relax Anywhere',
            description:
                'Enjoy the flexibility of working and unwinding from the comfort of any location.',
            imageUrl: 'assets/images/onboarding_image_3.png',
            bgColor: AppColors.onBoardingPage3Color,
            textColor: Colors.white,
            isLightBackground: false,
          ),
          OnboardingPageModel(
            title: 'Trusted Reviews & Ratings',
            description:
                'Check genuine reviews and ratings to make informed booking decisions.',
            imageUrl: 'assets/images/onboarding_image_4.jpg',
            bgColor: AppColors.onBoardingPage4Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
        ],
        onSkip: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => FirstScreen(),
            ),
          );

          await AppLocalStorage.disableIntroScreen();
        },
        onFinish: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => FirstScreen(),
            ),
          );

          await AppLocalStorage.disableIntroScreen();
        },
      ),
    );
  }
}
