import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:own_dev_fest/utils/devfest.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]
    );

    DevFest.prefs = await SharedPreferences.getInstance();

    runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Own DevFest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,  
      ),
    );
  }
}
