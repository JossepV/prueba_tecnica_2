import 'dart:ui';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    this.icon,
    required this.onTap,
    required this.size,
    this.withAsset = false,
    this.asset = '',
    super.key,
    this.backgroundColor = Colors.transparent,
    this.withDecoration = true,
    this.assetSize,
    this.radius = 16,
    this.onLongPressStart,
    this.onLongPressEnd,
  });
  final IconData? icon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final double size;
  final bool withAsset;
  final String asset;
  final bool withDecoration;
  final double? assetSize;
  final double radius;
  final Function(LongPressStartDetails)? onLongPressStart;
  final Function(LongPressEndDetails)? onLongPressEnd;
  @override
  CustomIconButtonState createState() => CustomIconButtonState();
}

class CustomIconButtonState extends State<CustomIconButton>
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
    return GestureDetector(
      onTapDown: (details) => _controller.forward(),
      onTapUp: (details) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onTap,
      onLongPressStart: widget.onLongPressStart,
      onLongPressEnd: widget.onLongPressEnd,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Transform.scale(
          scale: _animation.value,
          child: child,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.radius),
          child: BackdropFilter(
            filter: widget.withDecoration
                ? ImageFilter.blur(sigmaX: 24, sigmaY: 24)
                : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              height: widget.size,
              width: widget.size,
              decoration: widget.withDecoration
                  ? BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: widget.backgroundColor != null
                            ? [widget.backgroundColor!, widget.backgroundColor!]
                            : [
                                Theme.of(context).colorScheme.surfaceTint,
                                Theme.of(context).colorScheme.surfaceContainerHighest,
                              ],
                      ),
                      borderRadius: BorderRadius.circular(widget.radius),
                    )
                  : null,
              child: Center(
                child: widget.withAsset
                    ? Image.asset(
                        widget.asset,
                        height: widget.assetSize ??
                            (widget.size > 25 ? widget.size - 15 : widget.size),
                      )
                    : Icon(
                        widget.icon,
                        size: widget.assetSize ??
                            (widget.size > 25 ? widget.size - 20 : widget.size),
                        color: Colors.white,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
