import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/home/atoms/fields_avalible_section.dart';
import 'package:preuba_tecnica/widgets/home/molecules/fields_location_widget.dart';

class FieldContentReservationScreen extends StatelessWidget {
  const FieldContentReservationScreen({super.key, required this.model});
  final FieldsModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PtLabel.bold(
              label: model.name,
              color: Colors.black,
              size: 18,
            ),
            const SizedBox(
              height: 8,
            ),
            PtLabel.bold(
              label: model.type,
              color: Colors.black,
              size: 12,
            ),
            const SizedBox(
              height: 8,
            ),
            FieldAvalibleSection(model: model),
            const SizedBox(
              height: 8,
            ),
            FieldLocationWidget(model: model)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PtLabel.bold(
              label: '\$${model.pricePerHour.toString()}',
              color: Colors.blue,
              size: 18,
            ),
            const SizedBox(
              height: 8,
            ),
            PtLabel.normal(
              label: 'Por hora',
              color: Colors.black,
              size: 12,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.cloud,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                PtLabel.normal(
                  label: '${model.climate} %',
                  color: Colors.black,
                  size: 12,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
