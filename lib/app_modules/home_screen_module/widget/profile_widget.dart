import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/user_profile_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/profile_item.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    context.read<UserProfileBloc>().add(UserProfileEvent.userProfileFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        if (state is UserProfileError) {
          return ErrorWidget(state.errorMessage);
        }

        if (state is! UserProfileSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final profileData = state.userProfile;
        final dateFormat = DateFormat('MMMM d, y');

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "${AppUrls.baseUrl}${profileData.profilePicture}",
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        profileData.username,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        profileData.email,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // User Details
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ProfileItem(
                        icon: Icons.cake,
                        label: 'Birth Date',
                        value: dateFormat.format(profileData.dateOfBirth),
                      ),
                      const Divider(height: 24.0, thickness: 1.0),
                      ProfileItem(
                        icon: Icons.email,
                        label: 'Email',
                        value: profileData.email,
                      ),
                      const Divider(height: 24.0, thickness: 1.0),
                      ProfileItem(
                        icon: Icons.phone,
                        label: 'Phone Number',
                        value: profileData.phoneNumber,
                      ),
                      const Divider(height: 24.0, thickness: 1.0),
                      ProfileItem(
                        icon: Icons.home,
                        label: 'Address',
                        value: profileData.address,
                      ),
                      const Divider(height: 24.0, thickness: 1.0),
                      ProfileItem(
                        icon: Icons.lock,
                        label: 'Password',
                        value: _showPassword
                            ? profileData.password
                            : '*' * profileData.password.length,
                        isPassword: true,
                        onTogglePasswordVisibility: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
