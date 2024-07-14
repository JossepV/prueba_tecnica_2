import 'package:flutter/material.dart';
import 'package:preuba_tecnica/data_mock/mock_repository.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/common/molecules/bottom_navigation.dart';
import 'package:preuba_tecnica/widgets/home/molecules/app_bar_home_screen.dart';
import 'package:preuba_tecnica/widgets/home/molecules/close_sesion_button.dart';
import 'package:preuba_tecnica/widgets/home/organisms/fields_widget.dart';
import 'package:preuba_tecnica/widgets/home/organisms/reservation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOpenMenu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarHomeScreen(
                    onTapMenu: () {
                      setState(() {
                        isOpenMenu = !isOpenMenu;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  title('Hola Jossep!'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 16,
                  ),
                  title('Canchas'),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 380,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: MockRepository.mockFields.length,
                      itemBuilder: (context, index) {
                        return FieldsWidget(
                          model: MockRepository.mockFields[index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 16,
                  ),
                  title('Reservas programadas'),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: MockRepository.mockReservations.length,
                      itemBuilder: (context, index) {
                        return ReservationWidget(
                          model: MockRepository.mockReservations[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isOpenMenu) const CloseSesionButton(),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  Padding title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PtLabel.bold(
        label: title,
        color: Colors.black,
        size: 18,
      ),
    );
  }
}
