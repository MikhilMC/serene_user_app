import 'package:flutter/material.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/profile_item.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
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
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/seed/profile/300/300",
                    ), // Replace with your image asset
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'John Doe', // Replace with dynamic data
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'john.doe@example.com', // Replace with dynamic data
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
                    value: 'January 1, 1990', // Replace with dynamic data
                  ),
                  const Divider(height: 24.0, thickness: 1.0),
                  ProfileItem(
                    icon: Icons.email,
                    label: 'Email',
                    value: 'john.doe@example.com', // Replace with dynamic data
                  ),
                  const Divider(height: 24.0, thickness: 1.0),
                  ProfileItem(
                    icon: Icons.phone,
                    label: 'Phone Number',
                    value: '+1 123 456 7890', // Replace with dynamic data
                  ),
                  const Divider(height: 24.0, thickness: 1.0),
                  ProfileItem(
                    icon: Icons.home,
                    label: 'Address',
                    value:
                        '123 Main St, Springfield, IL, 62701', // Replace with dynamic data
                  ),
                  const Divider(height: 24.0, thickness: 1.0),
                  ProfileItem(
                    icon: Icons.lock,
                    label: 'Password',
                    value: _showPassword
                        ? "password"
                        : '********', // Replace with dynamic data
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
  }
}
