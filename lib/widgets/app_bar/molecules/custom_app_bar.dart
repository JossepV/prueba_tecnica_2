import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.centerWidget,
    this.rightWidget,
    this.leadingWidget,
    this.alignmentCenter = true,
    this.mainAxisAlignmentCenter = true,
    super.key,
  });

  final Widget centerWidget;
  final Widget? leadingWidget;
  final Widget? rightWidget;
  final bool alignmentCenter;
  final bool mainAxisAlignmentCenter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignmentCenter
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      crossAxisAlignment: alignmentCenter
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        leadingWidget ??
            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
        const Expanded(child: SizedBox()),
        centerWidget,
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisAlignment: mainAxisAlignmentCenter
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              rightWidget ??
                  SizedBox(width: MediaQuery.of(context).size.width * 0.1),
            ],
          ),
        ),
      ],
    );
  }
}
