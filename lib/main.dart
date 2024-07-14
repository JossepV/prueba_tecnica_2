import 'package:flutter/material.dart';
import 'package:preuba_tecnica/controllers/reservation_provider.dart';
import 'package:preuba_tecnica/data_mock/mock_repository.dart';
import 'package:preuba_tecnica/screens/landing_screen.dart';
import 'package:preuba_tecnica/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
   MockRepository.initializeReservations();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ReservationProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LandingScreen());
  }
}
