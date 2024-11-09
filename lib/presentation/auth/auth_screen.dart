import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/auth/auth_bloc.dart';
import 'package:hack_and_ton/presentation/auth/auth_state.dart';
import 'package:hack_and_ton/presentation/auth/register_screen.dart';
import 'package:hack_and_ton/presentation/reports/reports_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../moder/start/moder_start_screen.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late AuthBloc bloc;

  @override
  void initState() {
    bloc = AuthBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocProvider(
        create: (BuildContext context) {
          return bloc;
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _loginController,
                decoration: InputDecoration(
                  hintText: 'Логин',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: 'Пароль',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              const SizedBox(height: 16,),
              BlocBuilder<AuthBloc,AuthState>(builder: (context,state){
                return InkWell(
                  onTap: (){
                    bloc.auth(_loginController.text, _passwordController.text,()async{
                      await _navigateBasedOnRole();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    height: 50,
                    child: Center(child: Text("Войти"),),
                  ),
                );
              }),
              const SizedBox(height: 16,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RegisterScreen();
                }));
              }, child: Text("Зарегестрироваться")),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> _navigateBasedOnRole() async {
    final prefs = await SharedPreferences.getInstance();
    final role = prefs.getString('role');

    // Переход на экран в зависимости от роли
    if (role == 'user') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ReportsScreen()),
      );
    }
    if(role == 'Moder'){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ModerStartScreen()),
      );
    }
/*    else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    }*/
  }
}
