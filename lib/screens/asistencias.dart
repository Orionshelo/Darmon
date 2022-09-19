import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_3/theme/app_theme.dart';
import 'package:app_3/widgets/widgets.dart';

class AsistenciaScreen extends StatelessWidget {
  final controller = TextEditingController();

  Future createUser({required String nombre}) async {
    final docUser = FirebaseFirestore.instance.collection('deportistas').doc();

    final user = User(id: docUser.id, nombre: nombre);

    final json = user.toJson();

    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppTheme.primary,
        title: Text('Registro de Deportistas'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
          ),
          IconButton(
              onPressed: () {
                final nombre = controller.text;

                createUser(nombre: nombre);
              },
              icon: Icon(Icons.add_outlined))
        ],
      ),
    );
  }
}

class User {
  String id;
  final String nombre;

  User({this.id = '', required this.nombre});

  Map<String, String> toJson() => {'id': id, 'nombre': nombre};
}
