import 'package:app_3/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_3/widgets/widgets.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  Widget _bottonAction(IconData icon) {
    return InkWell(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(icon, color: AppTheme.primary),
        ),
        onTap: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        centerTitle: true,
        title: Text('Estadísticas del mes'),
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _bottonAction(Icons.bar_chart),
              _bottonAction(Icons.pie_chart)
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add_circle,
          color: AppTheme.primary,
        ),
        onPressed: () {},
      ),
      body: //_body(),
          LinearCharts(),
    );
  }
}
