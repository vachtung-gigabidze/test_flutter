import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter/features/app/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const ProviderScope(child: App()));
  // runApp(const App());
}
