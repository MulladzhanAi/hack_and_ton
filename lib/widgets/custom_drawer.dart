import 'package:flutter/material.dart';

import '../domain/repository/storage_repository.dart';
import '../presentation/auth/auth_screen.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final StorageRepository storageRepository = StorageRepository();


  signOut(BuildContext context)async{
    await storageRepository.removeToken();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return AuthScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 16,),
          TextButton(onPressed: (){
            signOut(context);
          }, child: Text("Выйти"))
        ],
      ),
    );
  }
}
