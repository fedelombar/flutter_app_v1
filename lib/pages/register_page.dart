import '../widgets/button_style.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input.dart';
import '../widgets/labels.dart';
import '../widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(
                    title: 'Registrate',
                  ),
                  _Form(),
                  Labels(
                    route: 'login',
                    title: '¿Ya tienes una cuenta?',
                    subtitle: 'Inicia sesión',
                  ),
                  Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final surnameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.person_outline,
            placeholder: 'Nombre',
            textController:
                nameCtrl, //Definimos que controladores queremos usar
            keyboardType: TextInputType.text,
          ),
          CustomInput(
            icon: Icons.person_outline,
            placeholder: 'Apellido',
            textController:
                surnameCtrl, //Definimos que controladores queremos usar
            keyboardType: TextInputType.text,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textController:
                emailCtrl, //Definimos que controladores queremos usar
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.phone_iphone,
            placeholder: 'Número de telefono',
            textController:
                phoneCtrl, //Definimos que controladores queremos usar
            keyboardType: TextInputType.number,
          ),
          BlueButton(
            text: 'Iniciar Sesión',
            onPressed: () {
              print(nameCtrl.text);
              print(surnameCtrl.text);
              print(emailCtrl.text);
              print(phoneCtrl.text);
            },
          ),
        ],
      ),
    );
  }
}
