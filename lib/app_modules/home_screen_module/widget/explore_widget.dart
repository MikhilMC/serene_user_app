import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/property_list_bloc/property_list_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/property_card.dart';
import 'package:serene_user_app/app_utils/app_helper.dart';
import 'package:serene_user_app/app_widgets/empty_list.dart';
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
  bool _isLoaded = false;

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
      if (_selectedPropertyType != null) {
        context.read<PropertyListBloc>().add(
              PropertyListEvent.propertyListFetched(
                place: _placeController.text.trim(),
                propertyType: _selectedPropertyType ?? "",
              ),
            );
        setState(() {
          _isLoaded = true;
        });
      } else {
        AppHelper.showErrorDialogue(
          context,
          "Please select the property type",
        );
        setState(() {
          _isLoaded = false;
        });
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please enter the place name",
      );
      setState(() {
        _isLoaded = false;
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
          if (_isLoaded)
            BlocBuilder<PropertyListBloc, PropertyListState>(
              builder: (context, state) {
                if (state is PropertyListError) {
                  return ErrorWidget(state.errorMessage);
                }

                if (state is PropertyListEmpty) {
                  return EmptyList(
                    message: "Sorry, no property available",
                  );
                }

                if (state is! PropertyListSuccess) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.firstColor,
                    ),
                  );
                }

                final properties = state.properties;

                return Column(
                  children: properties
                      .map((property) => PropertyCard(property: property))
                      .toList(),
                );
              },
            ),
        ],
      ),
    );
  }
}
