import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class TotalPriceReserverWidget extends StatelessWidget {
  const TotalPriceReserverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PtLabel.bold(
          label: 'Total a pagar',
          color: Colors.black,
          size: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PtLabel.bold(
              label: '\$50',
              color: Colors.blue,
              size: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            PtLabel.normal(
              label: 'Por 2 horas',
              color: Colors.grey,
              size: 12,
            ),
          ],
        )
      ],
    );
  }
}