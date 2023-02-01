import 'package:flutter/material.dart';
import 'package:git_test/screens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigateHome();
  }

  void NavigateHome() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset('lib/assets/CHA_logo.png'),
    ));
  }
}
