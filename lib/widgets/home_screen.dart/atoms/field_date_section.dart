import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class FieldsDateSection extends StatelessWidget {
  const FieldsDateSection({
    super.key,
    required this.model,
  });

  final FieldsModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.calendar_today_outlined,
          color: Colors.grey,
          size: 14,
        ),
        const SizedBox(
          width: 8,
        ),
        PtLabel.normal(
          label: model.date,
          color: Colors.black,
          size: 12,
        ),
      ],
    );
  }
}