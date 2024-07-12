import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class FieldAvalibleSection extends StatelessWidget {
  const FieldAvalibleSection({super.key, required this.model});
  final FieldsModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PtLabel.normal(
          label: model.available ? 'Disponible' : "No Disponible",
          color: Colors.black,
          size: 12,
        ),
        const SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: model.available ? Colors.blue : Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.access_time_rounded,
          color: Colors.grey,
          size: 14,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: model.startTime,
          color: Colors.black,
          size: 12,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: 'a',
          color: Colors.black,
          size: 12,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: model.finishTime,
          color: Colors.black,
          size: 12,
        ),
      ],
    );
  }
}