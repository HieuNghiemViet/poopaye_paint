import 'package:flutter/material.dart';
import 'package:poopaye_paint/app/poopaye_app.dart';
import 'injection_container.dart' as di;

void main() {
  //ANAinCYXagVzfXo9sITbLp2Z0tH7INt8Hnzcc1o39Mah8sTRnsGzKheEouTW
  WidgetsFlutterBinding.ensureInitialized();
  di.configureDependencies();
  runApp(const PoopayeApp());
}
