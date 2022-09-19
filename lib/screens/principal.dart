import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:app_3/theme/app_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SlideInDown(
            duration: Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Image.asset('assets/darmon_h_t.png',
                            width: MediaQuery.of(context).size.width / 2,
                            height: 100),
                      ),
                    ]),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, 'login'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.primary,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text(
                        '¿Usted es dueño de un Club?',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, 'login'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: AppTheme.primary,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Text(
                        '¿Usted es deportista?',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )));
  }
}
