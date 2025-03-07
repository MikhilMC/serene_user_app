import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_user_app/app_modules/register_module/bloc/user_register_bloc.dart';
import 'package:serene_user_app/app_modules/register_module/class/user_registration_details.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/blurry_container/src/container.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/multiline_form_field.dart';
import 'package:serene_user_app/app_widgets/normal_text_field.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';
import 'package:serene_user_app/app_widgets/password_text_field.dart';
import 'package:serene_user_app/app_widgets/select_date_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  DateTime? _birthDate;
  File? _profilePicture;

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _pickProfilePicture() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile =
          await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _profilePicture = File(pickedFile.path);
        });
      }
    } catch (e) {
      if (mounted) {
        AppHelper.showErrorDialogue(
          context,
          "Error while selecting profile picture from gallery.",
        );
      }
    }
  }

  void _register() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      if (_birthDate != null) {
        if (_profilePicture != null) {
          UserRegistrationDetails userRegistrationDetails =
              UserRegistrationDetails(
            username: _fullNameController.text.trim(),
            email: _emailController.text.trim(),
            phoneNumber: _phoneNumberController.text.trim(),
            password: _passwordController.text.trim(),
            address: _addressController.text.trim(),
            dateOfBirth: _birthDate!,
            profilePicture: _profilePicture!,
          );

          final userRegistrationBloc =
              BlocProvider.of<UserRegisterBloc>(context);

          userRegistrationBloc.add(
            UserRegisterEvent.userRegistered(
              userRegistrationDetails,
            ),
          );
        } else {
          AppHelper.showErrorDialogue(
            context,
            "You have to add profile picture.",
          );
        }
      } else {
        AppHelper.showErrorDialogue(
          context,
          "You have to add your date of birth.",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "You have to fill all the fields.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<UserRegisterBloc, UserRegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelper.showCustomSnackBar(
                  context,
                  "User Registration Successfull",
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "User Registration Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "User Registration Failed: $errorMessage",
            ),
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
                      image: AssetImage("assets/images/register_page.jpg"),
                      fit: BoxFit.fitHeight,
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
                      height: screenSize.height * 0.75,
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
                      child: SingleChildScrollView(
                        // Wrap the Column in a SingleChildScrollView
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize:
                                MainAxisSize.min, // Use min to avoid overflow
                            children: [
                              SizedBox(height: 20), // Add some spacing
                              GestureDetector(
                                onTap: _pickProfilePicture,
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: ClipOval(
                                    child: _profilePicture == null
                                        ? Icon(
                                            Icons.add_a_photo,
                                            size: 50,
                                            color: Colors.grey,
                                          )
                                        : Image.file(
                                            _profilePicture!,
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20), // Add some spacing
                              Text(
                                "Welcome to Serene",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20), // Add some spacing
                              NormalTextField(
                                textEditingController: _fullNameController,
                                validatorFunction: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter full name';
                                  }
                                  return null;
                                },
                                labelText: 'Full Name',
                                hintText: 'Enter your full name',
                                textFieldIcon: Icon(Icons.person),
                              ),
                              SizedBox(height: 10), // Add some spacing
                              NormalTextField(
                                textEditingController: _emailController,
                                validatorFunction: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter email';
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
                              SizedBox(height: 10), // Add some spacing
                              NormalTextField(
                                textEditingController: _phoneNumberController,
                                validatorFunction: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter phone number';
                                  }
                                  bool phoneValid =
                                      RegExp(r"^(\+91|\+91\-|0)?[789]\d{9}$")
                                          .hasMatch(value);
                                  if (!phoneValid) {
                                    return 'Please enter a valid phone number';
                                  }
                                  return null;
                                },
                                labelText: 'Phone Number',
                                hintText: 'Enter your phone number',
                                textInputType: TextInputType.phone,
                                textFieldIcon: Icon(Icons.phone),
                              ),
                              SizedBox(height: 10), // Add some spacing
                              SelectDateField(
                                labelText: "Birthday",
                                hintText: "Enter your birthday",
                                value: _birthDate,
                                onValueChange: (value) {
                                  setState(() {
                                    _birthDate = value;
                                  });
                                },
                                firstDate: DateTime(1950),
                                lastDate: DateTime.now(),
                              ),
                              SizedBox(height: 10), // Add some spacing
                              MultilineFormField(
                                hintText: "Enter your address",
                                labelText: "Address",
                                feedbackController: _addressController,
                                validatorFunction: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your address';
                                  }
                                  return null;
                                },
                                prefixIcon: Icon(Icons.home),
                              ),
                              SizedBox(height: 10), // Add some spacing
                              PasswordTextField(
                                passwordController: _passwordController,
                              ),
                              SizedBox(height: 20), // Add some spacing
                              CustomButton(
                                buttonWidth: double.infinity,
                                backgroundColor: AppColors.firstColor,
                                textColor: Colors.white,
                                labelText: "Register",
                                onClick: _register,
                              ),
                              SizedBox(height: 10), // Add some spacing
                              RichText(
                                text: TextSpan(
                                  text: "Already have an account? ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap =
                                            () => Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginScreen(),
                                                  ),
                                                ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20), // Add some spacing
                            ],
                          ),
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
