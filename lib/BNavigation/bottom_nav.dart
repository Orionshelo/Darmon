import 'package:app_3/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      selectedItemColor: AppTheme.primary,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.newspaper), label: 'Novedades'),
        BottomNavigationBarItem(
            icon: Icon(Icons.area_chart), label: 'Estadísticas'),
        BottomNavigationBarItem(
            icon: Icon(Icons.attachment_outlined), label: 'Asistencia'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Perfil'),
      ],
    );
  }
}
