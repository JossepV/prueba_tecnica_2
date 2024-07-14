import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/reservation_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/reservation/atoms/icon_label.dart';

class SummaryConfirmReservation extends StatelessWidget {
  const SummaryConfirmReservation({super.key, required this.model});
  final ReservationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PtLabel.bold(
            label: 'Resumen',
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconLabel(
                    icon: Icons.sports_tennis_outlined,
                    title: model.field.type,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const IconLabel(
                    icon: Icons.person_outline_rounded,
                    title: ' Instructor: Daniela Porras',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconLabel(
                    icon: Icons.calendar_today_outlined,
                    title: model.field.date,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  IconLabel(
                    icon: Icons.timer_outlined,
                    title: '${model.totalhour} horas',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
