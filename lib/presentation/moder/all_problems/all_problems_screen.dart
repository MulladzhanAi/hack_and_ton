import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/all_problems_bloc.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/all_problems_state.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/update_status/update_status_screen.dart';

class AllProblemsScreen extends StatefulWidget {
  const AllProblemsScreen({super.key});

  @override
  State<AllProblemsScreen> createState() => _AllProblemsScreenState();
}

class _AllProblemsScreenState extends State<AllProblemsScreen> {

  late AllProblemsBloc bloc;

  @override
  void initState() {
    bloc = AllProblemsBloc();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context){
      return bloc;
    },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(child: BlocBuilder<AllProblemsBloc,AllProblemsState>(builder: (context,state){
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 16,),
                  Text("Список всех проблем:"),
                  const SizedBox(height: 16,),
                  for(var item in state.problems)...[
                    InkWell(
                      onTap: ()async{
                        await Navigator.push(context, MaterialPageRoute(builder: (context){
                          return UpdateStatusScreen(problem: item,);
                        }));
                        bloc.getAllProblems();
                      },
                      child: ListTile(
                        title: Text("${item.description} ${item.organization?.name} ${item.district?.name} ${item.repostStatus?.getName()}"),
                      ),
                    )
                  ]
                ],
              ),
            ),
          );
        })),
      ),

    );
  }
}
