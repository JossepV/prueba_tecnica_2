class FieldsModel {
  final int id;
  final String name;
  final String imageUrl;
  final String type;
  final String date;
  final String startTime;
  final String finishTime;
  final String climate;
  final bool available;
  final double pricePerHour;

  FieldsModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.date,
    required this.finishTime,
    required this.startTime,
    required this.climate,
    required this.available,
    required this.pricePerHour,
  });
}
