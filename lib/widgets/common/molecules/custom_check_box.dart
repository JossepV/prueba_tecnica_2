
import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/check_box_widget.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool)? onCheckboxChanged;
  const CustomCheckBox({
    super.key,
    required this.value,
    this.onCheckboxChanged,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Transform.scale(
        scale: _animation.value,
        child: child,
      ),
      child: CheckboxWidget(
        value: widget.value,
        onChanged: (bool? newValue) {
          if (newValue != null) {
            if (newValue) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            widget.onCheckboxChanged?.call(newValue);
          }
        },
      ),
    );
  }
}
