import 'package:flutter/material.dart';
import 'package:app_3/theme/app_theme.dart';

class FormEntrenamientoScreen extends StatelessWidget {
  const FormEntrenamientoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de volumen de entrenamiento'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      body: Container(
          child: Form(
              child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            autocorrect: false,
            decoration: InputDecoration(
                labelText: 'Número de vueltas',
                labelStyle: TextStyle(color: AppTheme.primary),
                prefixIcon: Icon(Icons.sports_outlined)),
          ),
          SizedBox(height: 30),
          TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: 'Tiempo estimado de cada vuelta',
                  labelStyle: TextStyle(color: AppTheme.primary),
                  prefixIcon: Icon(Icons.timelapse_outlined))),
          SizedBox(height: 30),
          TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: 'Tiempo estimado de descanso',
                  labelStyle: TextStyle(color: AppTheme.primary),
                  prefixIcon: Icon(Icons.personal_injury_outlined))),
          SizedBox(height: 200),
          MaterialButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, 'statistic'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: AppTheme.primary,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                child: Text(
                  'Registrar',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ))),
    );
  }
}
