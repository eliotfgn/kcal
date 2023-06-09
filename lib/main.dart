import 'package:flutter/material.dart';
import 'package:kcal/screens/favorites/favorites_screen.dart';
import 'package:kcal/screens/home/home_screen.dart';
import 'package:kcal/screens/onboarding/first_onboarding_screen.dart';
import 'package:kcal/screens/onboarding/second_onboarding_screen.dart';
import 'package:kcal/screens/onboarding/third_onboarding_screen.dart';
import 'package:kcal/screens/scan/scan_screen.dart';
import 'package:kcal/screens/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        "/first-onboarding": (context) => const FirstOnboardingScreen(),
        "/second-onboarding": (context) => const SecondOnboardingScreen(),
        "/third-onboarding": (context) => const ThirdOnboardingScreen(),
        "/home": (context) => const HomeScreen(),
        "/favorites": (context) => const FavoritesScreen(),
        "/scan": (context) => const ScanScreen(),
      },
      initialRoute: "/home",
    );
  }
}
