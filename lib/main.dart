import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:castor_app_v1/routes/routes.dart';
import 'package:castor_app_v1/services/auth_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Castor App',
        initialRoute: 'login',
        routes: appRoutes,
      ),
    );
  }
}
