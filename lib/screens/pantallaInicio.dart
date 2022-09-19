import 'package:flutter/material.dart';
import 'package:app_3/theme/app_theme.dart';

class PantallaInicio extends StatefulWidget {
  PantallaInicio({Key? key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Container(
                padding:
                    EdgeInsets.only(right: 5, left: 5, top: 50, bottom: 50),
                decoration: BoxDecoration(
                    color: AppTheme.primary,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(200))),
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'La planeación te vuelve más competitivo',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset('assets/darmon_v_t.png',
                      width: MediaQuery.of(context).size.width / 2,
                      height: 200),
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                RaisedButton(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(12),
                    color: AppTheme.primary,
                    child:
                        Icon(Icons.chevron_right_outlined, color: Colors.white),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'main');
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
