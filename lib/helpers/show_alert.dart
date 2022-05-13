import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//Dialog for Android devices

ShowAlert(BuildContext context, String title, String subtitle) {
  if (Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),
                textColor: Colors.blue,
                elevation: 5,
              )
            ],
          );
        });
  }

  //Dialog for iOS devices

  showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: <Widget>[
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ));
}
