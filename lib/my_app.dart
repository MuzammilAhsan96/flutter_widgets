import 'package:flutter/material.dart';
import 'package:hello_world/pages/dashboard_page.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/pages/splash.dart';
import 'package:hello_world/utils/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Awesome App",
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        home: Constants.prefs.getBool("loggedIn") == true
            ? const HomePage() //HomePageFB()
            : DashboardPage(),
        routes: {
          "/login": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/splash": (context) => SplashPage(),
          "/dashboard": (context) => DashboardPage(),
        });
  }
}
