import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class HeaderContentFields extends StatelessWidget {
  const HeaderContentFields({
    super.key,
    required this.model,
  });

  final FieldsModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PtLabel.bold(
          label: model.name,
          color: Colors.black,
          size: 16,
        ),
        const Expanded(child: SizedBox()),
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
    );
  }
}