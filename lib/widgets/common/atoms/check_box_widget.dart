import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? color;

  const CheckboxWidget({
    required this.value,
    required this.onChanged,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colors = color ?? Colors.green;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: _onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: value
              ? colors
              : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: value
                ? Colors.transparent
                : Theme.of(context).colorScheme.secondary.withOpacity(0.7),
            width: 1.5,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                weight: 100,
                size: 14,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
   void _onTap() {
    onChanged(!value);
  }
}
