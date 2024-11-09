import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/all_problems_screen.dart';
import 'package:hack_and_ton/presentation/moder/boards/boards_screen.dart';
import 'package:hack_and_ton/presentation/moder/create_problem/create_problem_screen.dart';
import 'package:hack_and_ton/presentation/moder/start/moder_start_bloc.dart';
import 'package:hack_and_ton/widgets/custom_drawer.dart';

import 'moder_start_state.dart';

class ModerStartScreen extends StatefulWidget {
  const ModerStartScreen({super.key});

  @override
  State<ModerStartScreen> createState() => _ModerStartScreenState();
}

class _ModerStartScreenState extends State<ModerStartScreen> {

  late ModerStartBloc bloc;

  @override
  void initState() {
    bloc = ModerStartBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return bloc;
      },
      child: Scaffold(
        appBar: AppBar(),
        endDrawer: CustomDrawer(),
        body: SafeArea(child: SingleChildScrollView(
          child: BlocBuilder<ModerStartBloc,ModerStartState>(
            builder: (BuildContext context, state) {
              return Column(
                children: [
                  const SizedBox(height: 16,),

                  Row(
                    children: [
                      TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return BoardsScreen();
                          }));
                      }, child: Text("Доска процессов"),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return AllProblemsScreen();
                        }));
                      }, child: Text("Список всех проблем"),),
                    ],
                  ),

                  const SizedBox(height: 16,),
                  for(var item in state.reports)...[
                    InkWell(
                      onTap: (){
                        bloc.selectReport(item);
                      },
                      child: ListTile(
                        title: Text("${item.description} ${item.organization?.name} ${item.district?.name}"),
                        trailing: state.selectedReports.contains(item) ? Icon(Icons.check) : null
                      ),
                    )
                  ]
                ],
              );
            },
          ),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:  BlocBuilder<ModerStartBloc,ModerStartState>(
          builder: (BuildContext context, state) {
            return state.selectedReports.isNotEmpty ? FloatingActionButton(
                backgroundColor: Colors.blueAccent,
                shape: CircleBorder(),
                child: Icon(Icons.add),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CreateProblemScreen(reports: state.selectedReports);
                  }));
                }) : Container();
          },

        ),
      ),
    );
  }
}
