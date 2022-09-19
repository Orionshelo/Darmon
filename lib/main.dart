import 'package:app_3/BNavigation/rutas.dart';
import 'package:app_3/screens/screens.dart';
import 'package:app_3/widgets/estadisticas.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:app_3/widgets/widgets.dart';
import 'package:app_3/services/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'BNavigation/bottom_nav.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'inicio',
      routes: {
        'login': (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),
        'home': (_) => HomePage(),
        'news': (_) => CardScreen(),
        'checking': (_) => CheckAuthScreen(),
        'main': (_) => MainScreen(),
        'entrenamientos': (_) => FormEntrenamientoScreen(),
        'statistic': (_) => StatisticPage(),
        'dummy': (_) => DummyScreen(),
        'inicio': (_) => PantallaInicio(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      debugShowCheckedModeBanner: false,
      title: 'Darmon',
      //home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  BNavigator? myBNB;

  @override
  void initState() {
    myBNB = BNavigator(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
    );
  }
}
