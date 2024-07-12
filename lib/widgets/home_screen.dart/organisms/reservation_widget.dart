import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/reservation_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/background_picture.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/molecules/reservation_content.dart';

class ReservationWidget extends StatelessWidget {
  const ReservationWidget({super.key, required this.model});
  final ReservationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      width: double.infinity,
      height: 115,
      color: Colors.blueGrey.withOpacity(0.2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackgroundPicture(
            height: 50,
            width: 50,
            imageUrl: model.field.imageUrl,
          ),
          const SizedBox(
            width: 10,
          ),
          ReservationContent(model: model)
        ],
      ),
    );
  }
}
