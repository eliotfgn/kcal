import 'package:flutter/material.dart';
import 'package:kcal/screens/splash/splash_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const SplashScreen(),
      },
      initialRoute: "/",
    );
  }
}
