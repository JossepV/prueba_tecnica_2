import 'package:flutter/material.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/screens/reservation_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/home/atoms/field_date_section.dart';
import 'package:preuba_tecnica/widgets/home/atoms/fields_avalible_section.dart';
import 'package:preuba_tecnica/widgets/home/atoms/header_content_fields.dart';

class FieldsContent extends StatelessWidget {
  const FieldsContent({super.key, required this.model});
  final FieldsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderContentFields(model: model),
          const SizedBox(
            height: 10,
          ),
          PtLabel.normal(
            label: model.type,
            color: Colors.black,
            size: 12,
          ),
          const SizedBox(
            height: 10,
          ),
          FieldsDateSection(model: model),
          const SizedBox(
            height: 10,
          ),
          FieldAvalibleSection(
            model: model,
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: PrimaryButton(
              colorLabel: Colors.white,
              label: 'Reservar',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReservationScreen(),
                  ),
                );
              },
              height: 40,
              radius: 8,
            ),
          )
        ],
      ),
    );
  }
}
