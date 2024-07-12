import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/background_picture.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/molecules/fields_content.dart';

class FieldsWidget extends StatelessWidget {
  const FieldsWidget({super.key, required this.model});
  final FieldsModel model;
  @override
  Widget build(BuildContext context) {
    const double width = 240;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: width,
      height: 370,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          BackgroundPicture(
            imageUrl: model.imageUrl,
            width: width,
            height: 150,
            radius: 8,
          ),
          FieldsContent(model: model)
        ],
      ),
    );
  }
}