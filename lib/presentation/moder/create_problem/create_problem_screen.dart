import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/models/report.dart';
import 'package:hack_and_ton/presentation/moder/create_problem/create_problem_bloc.dart';
import 'package:hack_and_ton/presentation/moder/create_problem/create_problem_state.dart';
import 'package:hack_and_ton/presentation/moder/start/moder_start_screen.dart';

import '../../../widgets/button.dart';

class CreateProblemScreen extends StatefulWidget {
  final List<Report> reports;
  const CreateProblemScreen({
    required this.reports,
    super.key});

  @override
  State<CreateProblemScreen> createState() => _CreateProblemScreenState();
}

class _CreateProblemScreenState extends State<CreateProblemScreen> {

  late CreateProblemBloc bloc;

  final TextEditingController _descController = TextEditingController();

  @override
  void initState() {
    bloc = CreateProblemBloc();
    super.initState();
  }


  TextStyle defaultTextStyle(){
    return const TextStyle(fontSize: 16,);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (contex){
      return bloc;
    },
      child: Scaffold(
        body: SafeArea(child: SingleChildScrollView(
          child: BlocBuilder<CreateProblemBloc,CreateProblemState>(builder: (context,state){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 16,),
                  Text("Опишите проблему",style: defaultTextStyle(),),
                  const SizedBox(height: 16,),
                  TextFormField(
                    controller: _descController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Button(
                    label: 'Подтвердить',
                    onTap: () {
                      bloc.createProblem(
                          reports: widget.reports,
                          description: _descController.text,
                          onSucces: (){
                            showSnackBar('Проблема успешно создана');
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return ModerStartScreen();
                            }));
                          }
                      );
                    },
                  )
                ],
              ),
            );
          }),
        )),
      ),
    );
  }

  showSnackBar(String text){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Center(child: Text('${text}')),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 6.0,
      ),
    );
  }
}
