import 'dart:math';

import 'package:faker/faker.dart' as faker;
import 'package:flutter/material.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/property.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/property_card.dart';
import 'package:serene_user_app/app_widgets/normal_text_field.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({super.key, this.initialPlace});

  final String? initialPlace; // Accept initial place name

  @override
  State<ExploreWidget> createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  final _formKey = GlobalKey<FormState>();
  final _placeController = TextEditingController();
  String? _selectedPropertyType;
  List<Property> _properties = [];

  final List<String> _propertyTypes = [
    'Apartment',
    'House',
    'Villa',
    'Cabin',
    'Cottage',
    'Loft',
    'Bungalow',
    'Treehouse',
    'Tiny Home',
    'Yurt',
    'Dome',
    'Boat',
    'Campsite',
    'Castle',
    'Lighthouse',
  ];

  @override
  void initState() {
    super.initState();
    if (widget.initialPlace != null) {
      _placeController.text = widget.initialPlace!; // Pre-fill place name
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Generate random properties
      final random = Random();
      setState(() {
        _properties = List.generate(
          10,
          (index) => Property(
            name: faker.Faker().lorem.words(3).join(' '),
            imageUrl: 'https://picsum.photos/300/200?random=$index',
            rating: (random.nextDouble() * 5).toStringAsFixed(1),
            reviews: random.nextInt(1000), // Convert to double
            dailyRate:
                (1000 + random.nextInt(5000)).toDouble(), // Convert to double
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NormalTextField(
                  hintText: "Enter Place",
                  labelText: "Place",
                  textEditingController: _placeController,
                  validatorFunction: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a place';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  value: _selectedPropertyType,
                  decoration: const InputDecoration(
                    labelText: 'Property Type',
                    border: OutlineInputBorder(),
                  ),
                  items: _propertyTypes
                      .map((type) => DropdownMenuItem(
                            value: type,
                            child: Text(type),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedPropertyType = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a property type';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          if (_properties.isNotEmpty)
            Column(
              children: _properties
                  .map((property) => PropertyCard(property: property))
                  .toList(),
            ),
        ],
      ),
    );
  }
}
