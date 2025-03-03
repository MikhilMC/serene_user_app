import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/view/home_screen.dart';
import 'package:serene_user_app/app_widgets/custom_button.dart';
import 'package:serene_user_app/app_widgets/multiline_form_field.dart';

class BookingReviewScreen extends StatefulWidget {
  const BookingReviewScreen({super.key});

  @override
  State<BookingReviewScreen> createState() => _BookingReviewScreenState();
}

class _BookingReviewScreenState extends State<BookingReviewScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _feedbackController = TextEditingController();
  double _rating = 0.0; // Current rating (0.0 to 5.0)
  final List<File> _images = []; // List of uploaded images

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  // Function to handle image selection
  Future<void> _pickImages() async {
    try {
      final ImagePicker picker = ImagePicker();
      final List<XFile> pickedFiles = await picker.pickMultiImage();

      setState(() {
        _images.addAll(pickedFiles.map((file) => File(file.path)).toList());
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to pick images: $e")),
        );
      }
    }
  }

  // Function to handle image deletion
  void _deleteImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  // Function to handle form submission
  void _submitReview() {
    FocusScope.of(context).unfocus();
    if (_rating == 0.0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please provide a rating (0.5 to 5 stars).")),
      );
      return;
    }

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Review submitted successfully!")),
    );

    // Clear the form
    setState(() {
      _rating = 0.0;
      _feedbackController.clear();
      _images.clear();
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  // Function to handle star tap
  void _onStarTap(double rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit Review"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Star Rating Section
                Text(
                  "Rate your experience:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTapDown: (details) {
                        // Calculate the tapped position within the star
                        final double tapPosition = details.localPosition.dx;
                        final double starWidth = 40; // Width of each star
                        final double halfStarThreshold = starWidth / 2;

                        // Determine if the tap is on the left or right side of the star
                        final double rating = index +
                            (tapPosition < halfStarThreshold ? 0.5 : 1.0);
                        _onStarTap(rating);
                      },
                      child: _buildStar(index),
                    );
                  }),
                ),
                SizedBox(height: 20),

                // Feedback Section
                Text(
                  "Feedback (optional):",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                MultilineFormField(
                  feedbackController: _feedbackController,
                  labelText: "",
                  hintText: "",
                  validatorFunction: (value) {
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Image Upload Section
                Text(
                  "Upload images (optional):",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: _images.map((image) {
                    return Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: FileImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              _deleteImage(_images.indexOf(image));
                            },
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _pickImages,
                  child: Text("Select Images"),
                ),
                SizedBox(height: 20),

                // Submit Button
                CustomButton(
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.firstColor,
                  textColor: Colors.white,
                  labelText: "Submit Review",
                  onClick: _submitReview,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to build a star with half-star support
  Widget _buildStar(int index) {
    final double starRating = index + 1.0;
    final bool isHalfStar = _rating >= starRating - 0.5 && _rating < starRating;
    final bool isFullStar = _rating >= starRating;

    return Icon(
      isHalfStar ? Icons.star_half : Icons.star,
      size: 40,
      color: isFullStar || isHalfStar ? Colors.amber : Colors.grey,
    );
  }
}
