import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'http://10.0.2.2:stagebe.castor.app/api'
      : 'http://stagebe.castor.app/api';
}
