import 'package:flutter/material.dart';
import 'package:test_flutter/assets/themes/themes.dart';
import 'package:test_flutter/features/platform/factory/platform_widget_factory.dart';
import 'package:test_flutter/features/router/app_router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.root,
      onGenerateRoute: null,
      localizationsDelegates: null,
      supportedLocales: const [Locale('ru', 'RU')],
      locale: const Locale('ru'),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
