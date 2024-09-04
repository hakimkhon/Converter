import 'package:flutter/material.dart';
import 'package:for_sample/data/routes/app_routes.dart';
import 'package:for_sample/data/routes/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: MyRoute.generateRoute,
      initialRoute: MyRouteNames.splash,
    );
  }
}
