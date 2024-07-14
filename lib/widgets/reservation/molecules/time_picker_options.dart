import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_drop_down_button.dart';

class TimePickerOptions extends StatefulWidget {
  const TimePickerOptions({
    super.key,
    required this.isPickerShown,
    required this.onTapPickerShow,
    required this.timeController,
    required this.label,
  });

  final bool isPickerShown;
  final String label;
  final VoidCallback onTapPickerShow;
  final TextEditingController timeController;
  @override
  State<TimePickerOptions> createState() => _TimePickerOptionsState();
}

class _TimePickerOptionsState extends State<TimePickerOptions> {
  bool isPickerShown = false;
  late DateTime selectedDateTime;

  @override
  void initState() {
    super.initState();
    // Establece el DateTime inicial a la hora en punto más cercana
    selectedDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      DateTime.now().hour,
    );
    // Actualiza el controlador de texto con la hora inicial
    widget.timeController.text = _formatTime(selectedDateTime);
  }

  void _onTimeChanged(DateTime newDateTime) {
    // Asegúrate de que solo se seleccionen horas en punto
    final DateTime roundedDateTime = DateTime(
      newDateTime.year,
      newDateTime.month,
      newDateTime.day,
      newDateTime.hour,
    );

    setState(() {
      selectedDateTime = roundedDateTime;
      // Actualiza el controlador de texto con la nueva hora formateada
      widget.timeController.text = _formatTime(roundedDateTime);
    });
  }

  String _formatTime(DateTime dateTime) {
    // Formatea la hora en el formato de 24 horas y solo horas en punto
    final DateFormat formatter = DateFormat('HH:mm');
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdownButton(
          height: 70,
          width: 150,
          isOpen: isPickerShown,
          onTap: widget.onTapPickerShow,
          title: widget.timeController.text.isEmpty
              ? "00:00"
              : widget.timeController.text,
          colorTitle: Colors.blue,
          label: widget.label,
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedContainer(
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          duration: const Duration(milliseconds: 300),
          height: widget.isPickerShown ? 200 : 0,
          child: widget.isPickerShown
              ? CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: selectedDateTime,
                  onDateTimeChanged: _onTimeChanged,
                  use24hFormat: true,
                  minuteInterval: 60,
                  backgroundColor: Colors.white,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
