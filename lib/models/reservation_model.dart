import 'package:preuba_tecnica/models/fields_model.dart';

class ReservationModel {
  final FieldsModel field;
  final String userName;
  final double totalhour;
  final double totalPrice;

  ReservationModel({
    required this.field,
    required this.userName,
    required this.totalPrice,
    required this.totalhour,
  });
}