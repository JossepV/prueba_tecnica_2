import 'package:flutter/material.dart';
import 'package:preuba_tecnica/screens/my_reservations_screen.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/reservation/atoms/rescheduling_widget.dart';
import 'package:preuba_tecnica/widgets/reservation/molecules/total_price_widget.dart';

class TotalPaySection extends StatelessWidget {
  const TotalPaySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TotalPriceReserverWidget(),
          const SizedBox(
            height: 20,
          ),
          const ReschedulingWidget(),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
            width: double.infinity,
            label: 'Pagar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyReservationsScreen(),
                ),
              );
            },
            colorLabel: Colors.white,
            labelSize: 18,
          ),
          const SizedBox(
            height: 20,
          ),
          PrimaryButton(
            colors: const [Colors.white, Colors.white],
            width: double.infinity,
            label: 'Cancelar',
            onTap: () {
              Navigator.pop(context);
            },
            colorLabel: Colors.black,
            withBorder: true,
            labelSize: 18,
          )
        ],
      ),
    );
  }
}
