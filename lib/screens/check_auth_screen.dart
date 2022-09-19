import 'package:app_3/main.dart';
import 'package:app_3/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/services.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: Center(
          child: FutureBuilder(
              future: authService.readToken(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (!snapshot.hasData) return Text('Espere');

                if (snapshot == "") {
                  Future.microtask(() {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (
                              _,
                              __,
                              ___,
                            ) =>
                                HomePage(),
                            transitionDuration: Duration(seconds: 0)));
                    /* Navigator.of(context).pushReplacementNamed('login'); */
                  });
                } else {
                  Future.microtask(() {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (
                              _,
                              __,
                              ___,
                            ) =>
                                LoginScreen(),
                            transitionDuration: Duration(seconds: 0)));
                    /* Navigator.of(context).pushReplacementNamed('login'); */
                  });
                }
                ;

                return Container();
              })),
    );
  }
}
