import 'package:castor_app_v1/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Castor App',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
