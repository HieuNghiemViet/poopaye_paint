import 'package:flutter/material.dart';
import 'package:poopaye_paint/app/routes.dart';

class PoopayeApp extends StatelessWidget {
  const PoopayeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute.appRoute,
    );
  }
}
