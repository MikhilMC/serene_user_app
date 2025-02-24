import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:serene_user_app/app_modules/home_screen_module/enum/image_info.dart'
    as my_image_info; // Add a prefix

class HeroLayoutCard extends StatelessWidget {
  const HeroLayoutCard({
    super.key,
    required this.imageInfo,
  });

  final my_image_info.ImageInfo
      imageInfo; // Use the prefix to refer to your custom ImageInfo

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    const double fixedHeight = 300.0; // Set your desired fixed height here

    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        ClipRect(
          child: OverflowBox(
            maxWidth: width * 7 / 8,
            minWidth: width * 7 / 8,
            child: SizedBox(
              height: fixedHeight, // Fixed height for the image
              child: Image(
                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/${imageInfo.url}',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(4.0), // Optional: Rounded corners
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 3.0,
                    sigmaY: 3.0,
                  ), // Blur effect
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ), // Add padding
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(
                        alpha: 0.5,
                      ), // Semi-transparent black
                      borderRadius:
                          BorderRadius.circular(4.0), // Match ClipRRect
                    ),
                    child: Text(
                      imageInfo.title,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                              ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
