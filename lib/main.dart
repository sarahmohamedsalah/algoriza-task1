import 'package:flutter/material.dart';
import 'package:task1/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
