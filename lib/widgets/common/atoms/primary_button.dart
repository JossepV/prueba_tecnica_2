import 'package:flutter/material.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    required this.label,
    required this.onTap,
    this.width,
    super.key,
    this.height,
    this.labelSize,
    this.isActive = true,
    this.colors,
    this.colorLabel,
    this.radius,
    this.colorsInactive,
    this.child,
    this.withBorder = false,
  });
  final String label;
  final double? width;
  final double? height;
  final double? labelSize;
  final bool isActive;
  final bool withBorder;
  final VoidCallback onTap;
  final List<Color>? colors;
  final List<Color>? colorsInactive;
  final Color? colorLabel;
  final double? radius;
  final Widget? child;

  @override
  PrimaryButtonState createState() => PrimaryButtonState();
}

class PrimaryButtonState extends State<PrimaryButton>
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
    final List<Color> colorButton = widget.colors ??
        [
          Colors.green,
          Colors.green,
        ];
    final List<Color> colorButtonInactive = widget.colorsInactive ??
        [
          Colors.green.withOpacity(0.5),
          Colors.green.withOpacity(0.5),
        ];

    final colorLabel = widget.isActive
        ? Theme.of(context).colorScheme.secondary
        : Theme.of(context).colorScheme.secondary.withOpacity(0.15);
    return GestureDetector(
      onTapDown: (details) => _controller.forward(),
      onTapUp: (details) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.isActive ? widget.onTap : () {},
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Transform.scale(
          scale: _animation.value,
          child: child,
        ),
        child: Container(
          height: widget.height ?? 50,
          width: widget.width ?? MediaQuery.of(context).size.width * 0.45,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(widget.radius ?? 16)),
                border: widget.withBorder ? Border.all(color: Colors.black) : null,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.isActive ? colorButton : colorButtonInactive,
            ),
          ),
          child: widget.child ??
              PtLabel.bold(
                label: widget.label,
                color: widget.colorLabel ?? colorLabel,
                size: widget.labelSize ?? 12,
              ),
        ),
      ),
    );
  }
}
