import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_user_app/app_modules/register_module/view/register_screen.dart';
import 'package:serene_user_app/app_widgets/blurry_container/blurry_container.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/first_page.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.05,
              ),
              child: BlurryContainer(
                blur: 8,
                height: screenSize.height * 0.45,
                width: double.infinity,
                elevation: 6,
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.05,
                ),
                color: Colors.white.withValues(
                  alpha: 0.5,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenSize.width * 0.05),
                  topRight: Radius.circular(screenSize.width * 0.05),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacer(),
                    Text(
                      "Stay. Explore. Repeat...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Wherever you go,\nlet it feel like home.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.025,
                        vertical: screenSize.height * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            buttonWidth: screenSize.width * 0.35,
                            backgroundColor: AppColors.firstColor,
                            textColor: Colors.white,
                            labelText: "Login",
                            onClick: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            ),
                          ),
                          CustomButton(
                            buttonWidth: screenSize.width * 0.35,
                            backgroundColor: Colors.white,
                            textColor: AppColors.firstColor,
                            labelText: "Register",
                            onClick: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
