import 'package:app_3/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app_3/theme/app_theme.dart';
import 'package:app_3/modelos/categoria.dart';
import 'package:provider/provider.dart';
import 'package:app_3/services/auth_services.dart';
//import 'package:rnd/rnd.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  authService.logout();
                  Navigator.pushReplacementNamed(context, 'inicio');
                },
                icon: Icon(Icons.logout_outlined))
          ],
          title: Text("Inicio - Darmon"),
          backgroundColor: AppTheme.primary,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(children: [
            /* Positioned(
                child: Align(
              alignment: FractionalOffset.topLeft,
              child: Container(
                  padding:
                      EdgeInsets.only(right: 40, left: 30, bottom: 80, top: 5),
                  child: Text('\nBienvenido \nClub Cobos D.C.',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          //topLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200)))),
            )), */
            Container(
              child: GridView.builder(
                  itemCount: Menu.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10)),
                        child: GestureDetector(
                          onTap: () {
                            if (Menu[index].nombre == "Estadísticas del Club") {
                              Navigator.pushReplacementNamed(
                                  context, 'statistic');
                            }
                            if (Menu[index].nombre == "Eventos") {
                              Navigator.pushReplacementNamed(context, 'news');
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Menu[index].nombre,
                                  style: TextStyle(color: Colors.white)),
                              Image.asset("assets/" + Menu[index].foto,
                                  width: 100)
                            ],
                          ),
                        ));
                  }),
            ),
          ]),
        ));
  }
}
