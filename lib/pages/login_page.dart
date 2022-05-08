import 'package:flutter/material.dart';

import '../widgets/custom_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _Logo(),
              _Form(),
              _Labels(),
              Text(
                'Terminos y condiciones de uso',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ));
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/logo-castor.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textController:
                emailCtrl, //Definimos que controladores queremos usar
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController:
                passCtrl, //Definimos que controladores queremos usar
            isPassword: true,
          ),
          MaterialButton(
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
            child: Text('Login'),
            color: Color.fromARGB(255, 6, 157, 180),
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '¿No tienes una cuenta?',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          Text(
            'Crea una cuenta',
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
