import 'package:flutter/material.dart';
import 'package:test_flutter/assets/themes/themes.dart';
// import 'package:test_flutter/features/platform/factory/platform_widget_factory.dart';
import 'package:test_flutter/features/navigation/app_router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRouter.root,
      // onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      // localizationsDelegates: null,
      //  supportedLocales: const [Locale('ru', 'RU')],
      //  locale: const Locale('ru'),
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
    );
  }
}
