import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/background_picture.dart';
import 'package:preuba_tecnica/widgets/common/atoms/custom_icon_button.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const ImageCarousel({
    super.key,
    required this.imageUrls,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  final double height = 300;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              height: height,
              autoPlay: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.imageUrls.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return BackgroundPicture(
                    imageUrl: imageUrl,
                    height: height,
                    width: MediaQuery.of(context).size.width,
                  );
                },
              );
            }).toList(),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: CarouselIndicator(
                count: widget.imageUrls.length,
                index: _currentIndex,
                color: Colors.grey,
                activeColor: Colors.green,
                height: 12,
                width: 12,
                cornerRadius: 8,
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 24,
            child: CustomIconButton(
              radius: 12,
              onTap: () {
                Navigator.pop(context);
              },
              size: 34,
              backgroundColor: Colors.green,
              icon: Icons.arrow_back,
            ),
          ),
          const Positioned(
            top: 32,
            right: 24,
            child: Icon(
              Icons.heart_broken,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
