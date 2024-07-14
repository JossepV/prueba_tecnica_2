import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationProvider with ChangeNotifier {
  final dateController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  final commentController = TextEditingController();
  final instructorController = TextEditingController();
  bool isDatePickerVisible = false;
  bool isStartTimePickerVisible = false;
  bool isEndTimePickerVisible = false;

  DateTime? selectedDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  String? comment;
  String? instructor;

  bool get isFormFilled =>
      selectedDate != null &&
      startTime != null &&
      endTime != null &&
      commentController.text.isNotEmpty &&
      instructorController.text.isNotEmpty;

  String getFormattedDate(DateTime dateTime) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }

  void setDate(DateTime date) {
    selectedDate = date;
    dateController.text = getFormattedDate(date);
    isDatePickerVisible = false;
    notifyListeners();
  }

  void setStartTime(TimeOfDay time, BuildContext context) {
    startTime = time;
    startTimeController.text = time.format(context);
    notifyListeners();
  }

  void setEndTime(TimeOfDay time, BuildContext context) {
    endTime = time;
    endTimeController.text = time.format(context);
    notifyListeners();
  }

  void setComment(String comment) {
    commentController.text = comment;
    notifyListeners();
  }

  void setInstructor(String instructor) {
    instructorController.text = instructor;
    notifyListeners();
  }

  void closeAllPickers() {
    if (isDatePickerVisible ||
        isStartTimePickerVisible ||
        isEndTimePickerVisible) {
      isDatePickerVisible = false;
      isStartTimePickerVisible = false;
      isEndTimePickerVisible = false;
      notifyListeners();
    }
  }

  void toggleDatePickerVisibility() {
    isDatePickerVisible = !isDatePickerVisible;
    // Asegúrate de cerrar los otros selectores si están abiertos
    isStartTimePickerVisible = false;
    isEndTimePickerVisible = false;
    notifyListeners();
  }

  void toggleStartTimePickerVisibility() {
    isStartTimePickerVisible = !isStartTimePickerVisible;
    // Asegúrate de cerrar los otros selectores si están abiertos
    isDatePickerVisible = false;
    isEndTimePickerVisible = false;
    notifyListeners();
  }

  void toggleEndTimePickerVisibility() {
    isEndTimePickerVisible = !isEndTimePickerVisible;
    // Asegúrate de cerrar los otros selectores si están abiertos
    isDatePickerVisible = false;
    isStartTimePickerVisible = false;
    notifyListeners();
  }

}
