import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:preuba_tecnica/controllers/reservation_provider.dart';
import 'package:preuba_tecnica/widgets/common/atoms/primary_button.dart';
import 'package:preuba_tecnica/widgets/common/atoms/pt_label.dart';
import 'package:preuba_tecnica/widgets/common/molecules/custom_drop_down_button.dart';
import 'package:preuba_tecnica/widgets/reservation/molecules/time_picker_options.dart';
import 'package:provider/provider.dart';

class SelectDateAndHourWidget extends StatefulWidget {
  const SelectDateAndHourWidget({
    super.key,
    required this.dateController,
    required this.addCommentController,
    required this.startTimeController,
    required this.endTimeController,
    required this.ontapReserver,
    required this.isActiveButton,
  });
  final TextEditingController dateController;
  final TextEditingController addCommentController;
  final TextEditingController startTimeController;
  final TextEditingController endTimeController;
  final VoidCallback ontapReserver;
  final bool isActiveButton;
  @override
  State<SelectDateAndHourWidget> createState() =>
      _SelectDateAndHourWidgetState();
}

class _SelectDateAndHourWidgetState extends State<SelectDateAndHourWidget>
    with SingleTickerProviderStateMixin {
  bool isOpenDate = false;

  final TextEditingController timeController = TextEditingController();

  bool isPickerStartTimeShow = false;
  bool isPickerFinishTimeShow = false;

  DateTime _selectedDate = DateTime.now();

  String _getFormattedDate(DateTime dateTime) {
    // Establece el formato de fecha deseado
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }

  void _onDateSelected(DateTime value) {
    setState(() {
      _selectedDate = value;
      widget.dateController.text = _getFormattedDate(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ReservationProvider>(
      context,
    );
    return Container(
      height: 650,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(32),
      color: Colors.blueGrey.withOpacity(0.2),
      child: Stack(
        children: [
          PtLabel.bold(
            label: 'Establecer fecha y hora',
            color: Colors.black,
            size: 18,
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: PrimaryButton(
              label: 'Reservar',
              isActive: widget.isActiveButton,
              onTap: widget.ontapReserver,
              colorLabel: Colors.white,
              labelSize: 18,
            ),
          ),
          Positioned(
            top: 285,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                maxLines: 20,
                controller: widget.addCommentController,
                decoration: const InputDecoration(
                    hintText: 'Agregar un comentario..',
                    border: InputBorder.none),
              ),
            ),
          ),
          Positioned(
            top: 245,
            left: 0,
            child: PtLabel.bold(
              label: 'Agregar un Comentario',
              color: Colors.black,
              size: 18,
            ),
          ),
          Positioned(
            top: 145,
            left: 0,
            child: SizedBox(
              height: 500,
              child: TimePickerOptions(
                label: 'Hora de inicio',
                timeController: widget.startTimeController,
                isPickerShown: provider.isStartTimePickerVisible,
                onTapPickerShow: () {
                  provider.toggleStartTimePickerVisibility();
                },
              ),
            ),
          ),
          Positioned(
            top: 145,
            right: 0,
            child: SizedBox(
              height: 500,
              child: TimePickerOptions(
                label: 'Hora de fin',
                timeController: widget.endTimeController,
                isPickerShown: provider.isEndTimePickerVisible,
                onTapPickerShow: () {
                  provider.toggleEndTimePickerVisibility();
                },
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: CustomDropdownButton(
              height: 70,
              width: double.infinity,
              isOpen: provider.isDatePickerVisible,
              onTap: () {
                provider.toggleDatePickerVisibility();
              },
              title: provider.dateController.text.isEmpty
                  ? 'Seleccione una fecha'
                  : provider.dateController.text,
              colorTitle: Colors.blue,
              label: 'Fecha',
            ),
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: Visibility(
              visible: provider.isDatePickerVisible,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(16),
                width: 358,
                child: DatePicker(
                  centerLeadingDate: true,
                  slidersColor: Colors.black,
                  disabledCellsTextStyle:
                      const TextStyle(letterSpacing: 0, color: Colors.black),
                  currentDate: provider.selectedDate,
                  currentDateTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 13),
                  enabledCellsTextStyle: const TextStyle(color: Colors.black),
                  leadingDateTextStyle: const TextStyle(color: Colors.black),
                  daysOfTheWeekTextStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                  enabledCellsDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueGrey.withOpacity(0.2)),
                  disabledCellsDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.green),
                  selectedCellDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue),
                  currentDateDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue),
                  maxDate: DateTime(2050),
                  minDate: DateTime(2000),
                  onDateSelected: (selectedDate) {
                    provider.setDate(selectedDate);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
