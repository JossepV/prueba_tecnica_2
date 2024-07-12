import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PtLabel.bold(
          label: 'Tennis',
          color: Colors.white,
          size: 18,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 60,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.transparent, Colors.green],
              stops: [0.0, 0.3],
            ),
          ),
          child: PtLabel.bold(label: 'court', color: Colors.white, size: 18),
        )
      ],
    );
  }
}