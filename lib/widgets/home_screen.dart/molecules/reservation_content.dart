import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/reservation_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/atoms/field_date_section.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/atoms/total_time_and_price_reservation_widget.dart';
import 'package:preuba_tecnica/widgets/home_screen.dart/molecules/reserver_widget.dart';

class ReservationContent extends StatelessWidget {
  const ReservationContent({super.key, required this.model});
  final ReservationModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PtLabel.bold(
          label: model.field.name,
          color: Colors.black,
          size: 16,
        ),
        const SizedBox(
          height: 6,
        ),
        FieldsDateSection(model: model.field),
        const SizedBox(
          height: 6,
        ),
        ReserverWidget(
          imageUrl:
              'https://as1.ftcdn.net/v2/jpg/02/43/12/34/1000_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
          nameUser: model.userName,
        ),
        const SizedBox(
          height: 6,
        ),
        TotalTimeAndPriceReservationWidget(
            price: model.totalPrice, hours: model.totalhour)
      ],
    );
  }
}