import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_with_me/app/configure_dependencies.dart';
import 'package:learn_with_me/core/services/firebase_service.dart';
import 'package:learn_with_me/presentation/routes/app_routes.dart';

final GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.initialize();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
