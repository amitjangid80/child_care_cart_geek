import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';
import 'package:ui_sample/routes/custom_router.dart';
import 'package:ui_sample/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: themeData(),
      initialRoute: splashRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.generateRoutes,
    );
  }
}
