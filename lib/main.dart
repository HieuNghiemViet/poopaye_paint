import 'package:flutter/material.dart';
import 'package:poopaye_paint/app/poopaye_app.dart';
import 'injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.configureDependencies();
  runApp(const PoopayeApp());
}
