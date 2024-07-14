import 'package:flutter/material.dart';
import 'package:preuba_tecnica/controllers/reservation_provider.dart';
import 'package:preuba_tecnica/data_mock/mock_repository.dart';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/screens/confirm_register_screen.dart';
import 'package:preuba_tecnica/widgets/reservation/molecules/image_carousel.dart';
import 'package:preuba_tecnica/widgets/reservation/organisms/field_content_reservation_screen.dart';
import 'package:preuba_tecnica/widgets/reservation/organisms/select_date_and_hour_widget.dart';
import 'package:preuba_tecnica/widgets/reservation/organisms/select_intructor_widget.dart';
import 'package:provider/provider.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final List<FieldsModel> fieldList = MockRepository.mockFields;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ReservationProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: provider.closeAllPickers,
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
              SizedBox(
                height: 650,
                child: Stack(
                  children: [
                    Positioned(
                      top: 70,
                      left: 0,
                      right: 0,
                      child: SelectDateAndHourWidget(
                        dateController: provider.dateController,
                        addCommentController: provider.commentController,
                        startTimeController: provider.startTimeController,
                        endTimeController: provider.endTimeController,
                        ontapReserver: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmRegisterScreen()),
                          );
                        },
                        isActiveButton: !provider.isFormFilled,
                      ),
                    ),
                    const Positioned(
                      left: 32,
                      top: 0,
                      child: SelectInstructorWidget(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
