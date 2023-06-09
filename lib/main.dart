import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter/features/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const App());
}
