import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class FieldLocationWidget extends StatelessWidget {
  const FieldLocationWidget({
    super.key,
    required this.model,
  });

  final FieldsModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
          color: Colors.grey,
          size: 14,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: model.location,
          color: Colors.black,
          size: 12,
        ),
      ],
    );
  }
}