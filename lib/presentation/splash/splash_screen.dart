import 'package:flutter/material.dart';
import 'package:hack_and_ton/presentation/auth/auth_screen.dart';
import 'package:hack_and_ton/presentation/moder/start/moder_start_screen.dart';
import 'package:hack_and_ton/presentation/reports/reports_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _checkToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Text("Clean City"),
      )),
    );
  }


  Future<void> _checkToken() async {
    await Future.delayed(Duration(seconds: 1));
    final token = await getToken();
    if (token != null && token.isNotEmpty) {
      _navigateBasedOnRole();
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return AuthScreen();
      }));
    }
  }
  Future<String?> getToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('token');
  }

  Future<void> _navigateBasedOnRole() async {
    final prefs = await SharedPreferences.getInstance();
    final role = prefs.getString('role'); // Получаем роль из SharedPreferences

    print('ROLE ${role}');
    // Переход на экран в зависимости от роли
    if (role == 'user') {
      print('IS USER');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ReportsScreen()),
      );
    }
    if(role == 'Moder'){
      print('IS MODER');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ModerStartScreen()),
      );
    }
/*    else {
      print('IS ANOTHER');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    }*/
  }
}
