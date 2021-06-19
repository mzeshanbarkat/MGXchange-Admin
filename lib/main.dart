import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mgxchangeadmin/Admin/Screens/MainScreen/admindashboard.dart';

import 'Data/Constant.dart';
import 'Splash/Splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

BuildContext testContext;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mgxchange ',
      theme: ThemeData(
        fontFamily: 'SFProDisplay',
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: kPrimarycolor,
        ),
        backgroundColor: Colors.white,
        primaryColor: kPrimarycolor,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute:  '/Splashscreen',
      routes: <String, WidgetBuilder>{
        '/Splashscreen': (context) => SplashScreen(),
        '/admindashboard': (context) => AdminDashboard(),


      },
    );
  }
}
