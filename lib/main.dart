import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbhak_mart/pages/home_page.dart';
import 'package:starbhak_mart/pages/single_item_page.dart';
import 'package:starbhak_mart/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "singleItemPage": (context) => singleItemPage(),
        "SplashScreen":(context) => SplashScreen(),
      },
    );
  }
}
