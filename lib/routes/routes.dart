import 'package:flutter/widgets.dart';

import '../pages/card_page.dart';
import '../pages/loading_page.dart';
import '../pages/login_page.dart';
import '../pages/profile_page.dart';
import '../pages/register_page.dart';
import '../pages/transfers_page.dart';
import '../pages/users_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => UsersPage(),
  'profile': (_) => ProfilePage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'transfers': (_) => TransfersPage(),
  'card': (_) => CardPage(),
  'loading': (_) => LoadingPage(),
};
