import 'package:flutter/material.dart';
import 'package:preuba_tecnica/data_mock/mock_repository.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/widgets/reservation/molecules/image_carousel.dart';
import 'package:preuba_tecnica/widgets/reservation/molecules/summary_confirm_reservation.dart';
import 'package:preuba_tecnica/widgets/reservation/organisms/field_content_reservation_screen.dart';
import 'package:preuba_tecnica/widgets/reservation/organisms/total_pay_section.dart';

class ConfirmRegisterScreen extends StatelessWidget {
  const ConfirmRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FieldsModel> fieldList = MockRepository.mockFields;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCarousel(
              imageUrls: fieldList[0].imagesUrl,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: FieldContentReservationScreen(
                model: fieldList[0],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SummaryConfirmReservation(
              model: MockRepository.mockReservations[0],
            ),
            const SizedBox(
              height: 30,
            ),
            const TotalPaySection()
          ],
        ),
      ),
    );
  }
}
