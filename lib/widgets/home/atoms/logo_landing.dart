import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class LogoLanding extends StatelessWidget {
  const LogoLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PtLabel.bold(
          label: 'Tennis',
          color: Colors.white,
          size: 52,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16),
          height: 80,
          width: 160,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.transparent, Colors.green],
              stops: [0.0, 0.3],
            ),
          ),
          child: PtLabel.normal(label: 'court', color: Colors.white, size: 52),
        )
      ],
    );
  }
}
