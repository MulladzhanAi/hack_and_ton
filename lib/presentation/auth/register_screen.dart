import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/auth/auth_bloc.dart';
import 'package:hack_and_ton/presentation/auth/auth_screen.dart';
import 'package:hack_and_ton/presentation/auth/auth_state.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Почта',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              const SizedBox(height: 16,),
              BlocBuilder<AuthBloc,AuthState>(builder: (context,state){
                return InkWell(
                  onTap: (){
                    print('tapper');
                    bloc.register(_loginController.text, _passwordController.text, _emailController.text,(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AuthScreen();
                      }));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    height: 50,
                    child: Center(child: Text("Зарегестрироваться"),),
                  ),
                );
              }),
            ],
          ),
        ),
      )),
    );
  }
}
