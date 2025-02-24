import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/popular_place.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/hero_layout_card.dart';
import 'package:serene_user_app/app_modules/home_screen_module/enum/image_info.dart'
    as my_image_info;
import 'package:serene_user_app/app_modules/home_screen_module/widget/popular_city_card.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required this.onCityTap});

  final Function(String) onCityTap; // Callback for city tap

  @override
  State<HomeWidget> createState() => _HomeWidgetState();

  static const List<PopularPlace> popularCities = [
    PopularPlace(
      placeName: "Thrissur",
      imageUrl: "assets/images/thrissur.jpg",
    ),
    PopularPlace(
      placeName: "Kochi",
      imageUrl: "assets/images/kochi.jpg",
    ),
    PopularPlace(
      placeName: "Thiruvananthapuram",
      imageUrl: "assets/images/thiruvananthapuram.jpg",
    ),
    PopularPlace(
      placeName: "Kozhikode",
      imageUrl: "assets/images/kozhikode.jpg",
    ),
    PopularPlace(
      placeName: "Kannur",
      imageUrl: "assets/images/kannur.jpg",
    ),
    PopularPlace(
      placeName: "Alappuzha",
      imageUrl: "assets/images/alappuzha.jpg",
    ),
  ];
}

class _HomeWidgetState extends State<HomeWidget> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.025),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: screenSize.height * 0.3),
              child: CarouselView.weighted(
                controller: controller,
                itemSnapping: true,
                flexWeights: const <int>[1, 7, 1],
                children: my_image_info.ImageInfo.values
                    .map((my_image_info.ImageInfo image) {
                  return HeroLayoutCard(imageInfo: image);
                }).toList(),
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Text(
              "Popular Cities",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.firstColor,
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.8,
              ),
              itemCount: HomeWidget.popularCities.length,
              itemBuilder: (context, index) {
                final city = HomeWidget.popularCities[index];
                return PopularCityCard(
                  city: city,
                  onTap: () {
                    widget.onCityTap(city.placeName); // Trigger callback
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
