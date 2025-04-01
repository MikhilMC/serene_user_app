import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_modules/report_host_module/bloc/report_host_bloc.dart';
import 'package:serene_user_app/app_modules/report_host_module/class/report_details.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/overlay_loader_widget.dart';

class ReportHostScreen extends StatefulWidget {
  final int bookingId;
  const ReportHostScreen({super.key, required this.bookingId});

  @override
  State<ReportHostScreen> createState() => _ReportHostScreenState();
}

class _ReportHostScreenState extends State<ReportHostScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _descriptionController = TextEditingController();
  String? _selectedTitle;
  final List<File> _images = [];

  final List<String> _complaintTitles = [
    "Poor Service",
    "Property Misrepresentation",
    "Unhygienic Conditions",
    "Host Misconduct",
    "Billing Issues",
    "Other"
  ];

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  /// Function to pick multiple images
  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> pickedFiles = await picker.pickMultiImage();
    if (pickedFiles.isNotEmpty) {
      setState(() {
        _images.addAll(pickedFiles.map((file) => File(file.path)));
      });
    }
  }

  /// Function to remove an image
  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  /// Function to submit the form
  Future<void> _submitReport() async {
    FocusScope.of(context).unfocus();
    if (_selectedTitle != null) {
      if (_formKey.currentState!.validate()) {
        final ReportDetails reportDetails = ReportDetails(
          bookingId: widget.bookingId,
          title: _selectedTitle!,
          description: _descriptionController.text.trim(),
          images: _images.isNotEmpty ? _images : null,
        );

        final ReportHostBloc reportHostBloc =
            BlocProvider.of<ReportHostBloc>(context);

        reportHostBloc.add(ReportHostEvent.hostReported(reportDetails));
      } else {
        AppHelper.showErrorDialogue(
          context,
          "Please enter description",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please select title",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Host'),
        centerTitle: true,
        // backgroundColor: Colors.deepPurple,
      ),
      body: BlocConsumer<ReportHostBloc, ReportHostState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelper.showCustomSnackBar(
                  context,
                  "Reporting against your host successfull",
                );

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                  (route) => false,
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Host Reporting Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Host Reporting Failed: $errorMessage",
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
            childWidget: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Dropdown for complaint titles
                        const Text(
                          "Complaint Title",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          value: _selectedTitle,
                          decoration: InputDecoration(
                            hintText: "Select Complaint Title",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                          ),
                          items: _complaintTitles.map((title) {
                            return DropdownMenuItem(
                              value: title,
                              child: Text(title),
                            );
                          }).toList(),
                          onChanged: (value) => setState(() {
                            _selectedTitle = value;
                          }),
                          validator: (value) =>
                              value == null ? "Please select a title" : null,
                        ),
                        const SizedBox(height: 20),

                        // Multiline TextField for description
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _descriptionController,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Enter complaint description...",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: const EdgeInsets.all(16),
                          ),
                          validator: (value) => value!.isEmpty
                              ? "Please enter a complaint description"
                              : null,
                        ),
                        const SizedBox(height: 20),

                        // Image Picker Button
                        ElevatedButton.icon(
                          onPressed: _pickImages,
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Add Images",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Displaying Images in GridView
                        if (_images.isNotEmpty)
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: _images.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.file(
                                      _images[index],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 4,
                                    child: Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        onPressed: () => _removeImage(index),
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),

                        const SizedBox(height: 20),

                        // Submit Button
                        CustomButton(
                          buttonWidth: double.infinity,
                          backgroundColor: AppColors.firstColor,
                          textColor: Colors.white,
                          labelText: "Submit Report",
                          onClick: _submitReport,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
