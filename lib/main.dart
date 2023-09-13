import 'package:flutter/material.dart';
import 'package:disenhos/screens/scroll_desing.dart';
import 'package:disenhos/screens/basic_desing.dart';
import 'package:disenhos/screens/home_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: const Color.fromARGB(0, 241, 241, 241)
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_desing' : ( _ ) => BasicDesingScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(),
        'home_screen'  : ( _ ) => HomeScreen(),
      },
    );
  }
}
