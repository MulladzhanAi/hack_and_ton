import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/update_status/update_status_bloc.dart';
import 'package:hack_and_ton/presentation/moder/all_problems/update_status/update_status_state.dart';

import '../../../../data/models/problem.dart';
import '../../../../data/models/problem_status.dart';
import '../../../../widgets/button.dart';

class UpdateStatusScreen extends StatefulWidget {
  final Problem problem;
  const UpdateStatusScreen({
    required this.problem,
    super.key});

  @override
  State<UpdateStatusScreen> createState() => _UpdateStatusScreenState();
}

class _UpdateStatusScreenState extends State<UpdateStatusScreen> {
  
  late UpdateStatusBloc bloc;
  
  @override
  void initState() {
    bloc = UpdateStatusBloc();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context){
      return bloc;
    },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(child: BlocBuilder<UpdateStatusBloc,UpdateStatusState>(builder: (context,state){
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16,),

                Text("${widget.problem.description} ${widget.problem.district?.name} ${widget.problem.organization?.name}"),
                const SizedBox(height: 16,),
                Text("Текущий статус ${widget.problem.repostStatus?.getName()}"),


                const SizedBox(height: 16,),
                DropdownButton(
                  value: state.selectedProdblemStatus,
                  hint: Text("Выберите статус"),
                  items: bloc.pStatus.map((status) {
                    return DropdownMenuItem<ProblemStatus>(
                      value: status,
                      child: Text("${status?.rusName}"), // Отображение `rusName`
                    );
                  }).toList(), onChanged: (ProblemStatus? value) {
                    bloc.changeStatus(value);
                },
                ),
                Button(
                  label: 'Подтвердить',
                  onTap: () {
                     bloc.updateStatus(
                         problem: widget.problem,
                       status: state.selectedProdblemStatus?.name ?? "",
                       onSucces: (){
                           showSnackBar('Статус успешно обновлен');
                           Navigator.pop(context);
                       }
                     );
                  },
                )
              ],
            ),
          );
        })),
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
