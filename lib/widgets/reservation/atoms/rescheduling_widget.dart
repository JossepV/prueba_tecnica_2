import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class ReschedulingWidget extends StatelessWidget {
  const ReschedulingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.calendar_today_outlined,
            color: Colors.blue,
            size: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          PtLabel.normal(
            label: 'Reprogramar reserva',
            color: Colors.blue,
            size: 16,
          ),
        ],
      ),
    );
  }
}