import 'package:app_3/main.dart';
import 'package:app_3/widgets/page3.dart';
//import 'package:app_3/screens/login_screen.dart';
import 'package:app_3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      //LoginScreen(),
      HomeScreen(),
      const CardScreen(),
      //const Page2(),
      DummyScreen(),
      AsistenciaScreen(),
      const ProfileScreen(),
      //const Page4()
    ];
    return myList[index];
  }
}
