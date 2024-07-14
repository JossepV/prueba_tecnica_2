import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class TotalTimeAndPriceReservationWidget extends StatelessWidget {
  const TotalTimeAndPriceReservationWidget({
    super.key,
    required this.price,
    required this.hours,
  });
  final double price;
  final double hours;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time_rounded,
          color: Colors.grey,
          size: 14,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: '${hours.toString()} horas',
          color: Colors.black,
          size: 12,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Colors.grey,
          width: 1,
          height: 12,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: '\$${price.toString()}',
          color: Colors.black,
          size: 12,
        ),
      ],
    );
  }
}