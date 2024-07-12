import 'dart:math';
import 'package:preuba_tecnica/models/fields_model.dart';
import 'package:preuba_tecnica/models/reservation_model.dart';

class MockRepository {
  static final Random random = Random();
  static late final List<ReservationModel> mockReservations;
  static List<FieldsModel> mockFields = [
    FieldsModel(
      id: 0,
      name: 'Epic Box',
      imageUrl:
          'https://www.shutterstock.com/image-photo/bangkok-thailand-december-13-2023-600nw-2400930539.jpg',
      type: 'Cancha tipo A',
      date: '9 de julio 2024',
      finishTime: '4:00 pm',
      startTime: '7:00 am',
      climate: '30',
      available: true,
      pricePerHour: 25,
    ),
    FieldsModel(
      id: 1,
      name: 'Arena Central',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJH40Ip1tQN3fAB90R8yjjmueoj9y6OoB6hA&s',
      type: 'Cancha tipo B',
      date: '10 de julio 2024',
      finishTime: '12:00 pm',
      startTime: '11:00 am',
      climate: '28',
      available: false,
      pricePerHour: 20,
    ),
    FieldsModel(
      id: 2,
      name: 'Campo Estrella',
      imageUrl:
          'https://t1.uc.ltmcdn.com/es/posts/9/7/8/tipos_de_superficies_de_la_cancha_de_tenis_42879_3_600.jpg',
      type: 'Cancha tipo C',
      date: '11 de julio 2024',
      finishTime: '12:00 pm',
      startTime: '11:00 am',
      climate: '32',
      available: true,
      pricePerHour: 30,
    ),
  ];
  static void initializeReservations() {
    mockReservations = [
      ReservationModel(
        field: mockFields[0],
        userName: 'Andrea Gómez',
        totalhour: 2,
        totalPrice: mockFields[0].pricePerHour * 2,
      ),
      ReservationModel(
        field: mockFields[1],
        userName: 'Miguel',
        totalhour: 3,
        totalPrice: mockFields[1].pricePerHour * 3,
      ),
      ReservationModel(
        field: mockFields[2],
        userName: 'Daniel Moncada',
        totalhour: 1,
        totalPrice: mockFields[2].pricePerHour * 1,
      ),
      // ... más reservaciones si es necesario
    ];
  }
}
