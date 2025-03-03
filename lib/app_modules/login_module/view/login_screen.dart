import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/login_module/bloc/login_bloc.dart';
import 'package:serene_user_app/app_modules/login_module/class/login_details.dart';
import 'package:serene_user_app/app_modules/register_module/view/register_screen.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/blurry_container/src/container.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/normal_text_field.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';
import 'package:serene_user_app/app_widgets/password_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState!.validate()) {
      LoginDetails loginDetails = LoginDetails(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      final userLoginBloc = BlocProvider.of<LoginBloc>(context);

      userLoginBloc.add(
        LoginEvent.loggedin(
          loginDetails,
        ),
      );
    } else {
      AppHelper.showErrorDialogue(
        context,
        "You have to fill email and password.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (loginResponseModel) {
              if (loginResponseModel.status == "success") {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Success: ${loginResponseModel.message!}",
                    ),
                  ),
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "User Login Failed",
                );
              }
            },
            failure: (errorMessage) {
              AppHelper.showErrorDialogue(
                context,
                "User Login Failed: $errorMessage",
              );
            },
            loading: () {},
          );
        },
        builder: (context, state) {
          bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return OverlayLoaderWidget(
            isLoading: isLoading,
            childWidget: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/login_page.jpg"),
                      fit: BoxFit.cover,
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
                      height: screenSize.height * 0.5,
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Spacer(),
                            Text(
                              "Welcome back to Serene",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * 0.0275,
                            ),
                            NormalTextField(
                              textEditingController: _emailController,
                              validatorFunction: (value) {
                                // add email validation
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }

                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value);
                                if (!emailValid) {
                                  return 'Please enter a valid email';
                                }

                                return null;
                              },
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              textFieldIcon: Icon(Icons.email_outlined),
                              textInputType: TextInputType.emailAddress,
                            ),
                            // Spacer(),
                            SizedBox(
                              height: screenSize.height * 0.0275,
                            ),
                            PasswordTextField(
                              passwordController: _passwordController,
                            ),
                            // Spacer(),
                            SizedBox(
                              height: screenSize.height * 0.0275,
                            ),
                            CustomButton(
                              buttonWidth: double.infinity,
                              backgroundColor: AppColors.firstColor,
                              textColor: Colors.white,
                              labelText: "Login",
                              onClick: _login,
                            ),
                            // Spacer(),
                            SizedBox(
                              height: screenSize.height * 0.0275,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Register",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterScreen(),
                                            ),
                                          ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
