import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/reservation_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/background_picture.dart';
import 'package:preuba_tecnica/widgets/my_reservation/molecules/my_reservation_content.dart';
import 'package:preuba_tecnica/widgets/reservation/atoms/icon_label.dart';

class MyReservationWidget extends StatelessWidget {
  const MyReservationWidget({super.key, required this.model});
  final ReservationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackgroundPicture(
            height: 50,
            width: 50,
            imageUrl: model.field.imagesUrl[0],
          ),
          const SizedBox(
            width: 10,
          ),
          MyReservationContent(model: model),
          const Expanded(child: SizedBox()),
          IconLabel(
            icon: Icons.cloud,
            title: '${model.field.climate} %',
            alignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}