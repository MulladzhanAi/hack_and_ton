import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_and_ton/data/enums/repost_status.dart';
import 'package:hack_and_ton/presentation/report_detail/report_detail_screen.dart';
import 'package:hack_and_ton/presentation/reports/create_report/create/create_report_screen.dart';
import 'package:hack_and_ton/presentation/reports/create_report/organization_list/organization_list_screen.dart';
import 'package:hack_and_ton/presentation/reports/reports_bloc.dart';
import 'package:hack_and_ton/presentation/reports/reports_state.dart';
import 'package:hack_and_ton/widgets/custom_drawer.dart';


class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {

  late ReportsBloc bloc;

  @override
  void initState() {
    bloc = ReportsBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: AppBar(

        title: Text("Clean City"),
      ),
      body: SafeArea(child: BlocProvider(create: (context){
        return bloc;
      },
        child: BlocBuilder<ReportsBloc,ReportsState>(builder: (context,state){
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16,),
                for(var item in state.reports)...[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ReportDetailScreen(report: item);
                      }));
                    },
                    child: ListTile(
                      title: Text("${item.description}"),
                      trailing: Text("${item.reportStatus?.getName()}"),
                    ),
                  )
                ]
              ],
            ),
          );
        }),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: CircleBorder(),
          child: Icon(Icons.add),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return OrganizationListScreen();
          }));
          }),
    );
  }
}
