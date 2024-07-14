import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/common/molecules/card_circle_avatar.dart';

class ReserverWidget extends StatelessWidget {
  const ReserverWidget(
      {super.key, required this.imageUrl, required this.nameUser});
  final String imageUrl;
  final String nameUser;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PtLabel.normal(
          label: 'Reservado por: ',
          color: Colors.black,
          size: 12,
        ),
        CardCircleAvatar(
          imageUrl: imageUrl,
          radius: 8,
        ),
        const SizedBox(
          width: 5,
        ),
        PtLabel.normal(
          label: nameUser,
          color: Colors.black,
          size: 12,
        ),
      ],
    );
  }
}
