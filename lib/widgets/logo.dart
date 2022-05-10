import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/logo-castor.png'),
            ),
            SizedBox(height: 40),
            Text(
              title,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
