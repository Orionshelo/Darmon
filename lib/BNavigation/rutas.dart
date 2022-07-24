import 'package:app_3/main.dart';
import 'package:app_3/screens/login_screen.dart';
import 'package:app_3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      //LoginScreen(),
      const Page1(),
      const CardScreen(),
      //const Page2(),
      StatisticPage(),
      const Page4(),
      //const Page4()
    ];
    return myList[index];
  }
}
