// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class UserRegistrationDetails {
  final String username;
  final String email;
  final String phoneNumber;
  final String password;
  final String address;
  final DateTime dateOfBirth;
  final File profilePicture;
  UserRegistrationDetails({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.address,
    required this.dateOfBirth,
    required this.profilePicture,
  });
}
