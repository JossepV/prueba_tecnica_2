class FieldsModel {
  final int id;
  final String name;
  final List<String> imagesUrl;
  final String type;
  final String date;
  final String startTime;
  final String finishTime;
  final String climate;
  final bool available;
  final double pricePerHour;
  final String location;

  FieldsModel({
    required this.id,
    required this.name,
    required this.imagesUrl,
    required this.type,
    required this.date,
    required this.finishTime,
    required this.startTime,
    required this.climate,
    required this.available,
    required this.pricePerHour,
    required this.location,
  });
}
