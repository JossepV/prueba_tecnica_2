import 'package:flutter/material.dart';
import 'package:preuba_tecnica/data_mock/mock_repository.dart';
import 'package:preuba_tecnica/screens/home_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/home/molecules/app_bar_home_screen.dart';
import 'package:preuba_tecnica/widgets/home/molecules/close_sesion_button.dart';
import 'package:preuba_tecnica/widgets/my_reservation/organisms/my_reservation_widget.dart';

class MyReservationsScreen extends StatefulWidget {
  const MyReservationsScreen({super.key});

  @override
  State<MyReservationsScreen> createState() => _MyReservationsScreenState();
}

class _MyReservationsScreenState extends State<MyReservationsScreen> {
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
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: PrimaryButton(
                      width: double.infinity,
                      label: '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          PtLabel.normal(
                            label: 'Programar Reserva',
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  title('Mis Reservas'),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 700,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: MockRepository.mockReservations.length,
                      itemBuilder: (context, index) {
                        return MyReservationWidget(
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
    );
  }

  Padding title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: PtLabel.bold(
        label: title,
        color: Colors.black,
        size: 18,
      ),
    );
  }
}
